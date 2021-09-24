#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Jul  2 15:16:04 2019

@author: carsault
"""

#%%
import torch
import torch.nn as nn
import torch.nn.functional as F

class GaussianNoise(nn.Module):
    """Gaussian noise regularizer.

    Args:
        sigma (float, optional): relative standard deviation used to generate the
            noise. Relative means that it will be multiplied by the magnitude of
            the value your are adding the noise to. This means that sigma can be
            the same regardless of the scale of the vector.
        is_relative_detach (bool, optional): whether to detach the variable before
            computing the scale of the noise. If `False` then the scale of the noise
            won't be seen as a constant but something to optimize: this will bias the
            network to generate vectors with smaller values.
    """

    def __init__(self, args, sigma=0.1, is_relative_detach=True):
        super().__init__()
        self.sigma = sigma
        self.is_relative_detach = is_relative_detach
        self.noise = torch.tensor(0.0).to(args.device)

    def forward(self, x):
        if self.training and self.sigma != 0:
            scale = self.sigma * x.detach() if self.is_relative_detach else self.sigma * x
            sampled_noise = self.noise.repeat(*x.size()).normal_() * scale
            x = x + sampled_noise
        return x 

# Convolutional neural network (two convolutional layers)                                                                                                                                                                                                                       
class ConvNet(nn.Module):
    def __init__(self, args, num_classes=25, drop_outRate = 0.6):
        super(ConvNet, self).__init__()
        self.layer1 = nn.Sequential(
            nn.BatchNorm2d(1),
            #GaussianNoise(args, 0.3),
            nn.Conv2d(1, 16, kernel_size=(25,6), stride=1, padding=1),
            nn.BatchNorm2d(16),
            nn.ReLU(),
            nn.Dropout(drop_outRate),
            nn.MaxPool2d(kernel_size=(3,1), stride=1),
            nn.Conv2d(16, 20, kernel_size=(27,6), stride=1, padding=0),
            nn.BatchNorm2d(20),
            nn.ReLU(),
            nn.Dropout(drop_outRate),
            nn.Conv2d(20, 24, kernel_size=(27,6), stride=1, padding=0),
            nn.BatchNorm2d(24),
            nn.ReLU(),
            nn.Dropout(drop_outRate))
        self.layer5 = nn.Sequential(nn.Linear(1392,200), nn.Linear(200,num_classes))
        
    def forward(self, x):
        out = self.layer1(x)                                                                                                                                                                                                                                               
        out = out.view(out.size(0), -1)
        out = self.layer5(out)
        return out

# Convolutional neural network (two convolutional layers)                                                                                                                                                                                                                       
class ConvNet_essentia(nn.Module):
    def __init__(self, args, num_classes=25, drop_outRate = 0.6):
        super(ConvNet_essentia, self).__init__()
        self.layer1 = nn.Sequential(
            nn.BatchNorm2d(1),
            GaussianNoise(args, 0.3),
            nn.Conv2d(1, 16, kernel_size=(25,6), stride=1, padding=1),
            nn.BatchNorm2d(16),
            nn.ReLU(),
            nn.Dropout(drop_outRate),
            nn.MaxPool2d(kernel_size=(3,1), stride=1),
            nn.Conv2d(16, 20, kernel_size=(27,6), stride=1, padding=0),
            nn.BatchNorm2d(20),
            nn.ReLU(),
            nn.Dropout(drop_outRate),
            nn.Conv2d(20, 24, kernel_size=(27,6), stride=1, padding=0),
            nn.BatchNorm2d(24),
            nn.ReLU(),
            nn.Dropout(drop_outRate))
        self.layer5 = nn.Sequential(nn.Linear(8448,200), nn.Linear(200,num_classes))
        
    def forward(self, x):
        out = self.layer1(x)                                                                                                                                                                                                                                               
        out = out.view(out.size(0), -1)
        out = self.layer5(out)
        return out


# Convolutional neural network (two convolutional layers)
class MLP(nn.Module):
    def __init__(self, lenSeq, n_categories, n_hidden, n_latent, decimRatio, n_layer = 1, dropRatio = 0.5):
        super(MLP, self).__init__()
        self.fc1 = nn.Linear(int(lenSeq * n_categories / decimRatio), n_hidden)
        self.bn1 = nn.BatchNorm1d(n_hidden)
        self.fc2 = nn.ModuleList()
        self.bn2 = nn.ModuleList()
        for i in range(n_layer):
            self.fc2.append(nn.Linear(n_hidden, n_hidden))
            self.bn2.append(nn.BatchNorm1d(n_hidden))
        self.fc3 = nn.Linear(n_hidden, n_latent)
        self.drop_layer = nn.Dropout(p=dropRatio)
        self.n_categories = n_categories
        self.decimRatio = decimRatio
        self.lenSeq = lenSeq
        self.n_layer = n_layer
            
    def forward(self, x):
        x = x.view(-1, int(self.lenSeq * self.n_categories/ self.decimRatio))
        x = F.relu(self.bn1(self.fc1(x)))
        for i in range(self.n_layer):
            x = self.drop_layer(x)
            x = F.relu(self.bn2[i](self.fc2[i](x)))
        x = self.fc3(x)
        return x