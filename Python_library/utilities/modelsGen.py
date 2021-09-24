#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Jan  9 18:00:12 2019

@author: carsault
"""
import torch
import torch.nn as nn
import torch.nn.functional as F
from utilities import utils
from utilities.utils import *
#%%
class ModelFamily(nn.Module):
    def __init__(self):
        super(ModelFamily, self).__init__()
        self.models = nn.ModuleDict()
        self.decim = []

    def addModel(self, model, decim):
        self.models[decim] = model
        self.decim.append(decim)
        
    def forward(self, x, args, bornInf, bornSup):
        out = []
        i = 0
        for d in self.decim:
            if d != str(1) :
                data = x[:,bornInf[int(d)]:bornSup[int(d)],:].to(args.device)
                out.append(self.models[d].encoder(data))
            i += 1
        out = torch.cat(out, 1)
        data = x[:,bornInf[1]:bornSup[1],:].to(args.device)
        #print(data)
        y = self.models["1"](data,out)
        return y
    
    def train_epoch(self, training_generator, enc_optimizer, dec_optimizer, criterion, bornInf, bornSup, tf_mappingR, args):
        train_total_loss = 0
        for local_batch, local_labels, local_key, local_beat in training_generator:
            if args.alphaRep == "alphaRep":
                local_batch = nn.functional.one_hot(local_batch.long(),self.encoder.n_categories)           
                local_labels = nn.functional.one_hot(local_labels.long(),self.encoder.n_categories)
            if len(args.decimList) == 1:
                local_batch = local_batch[:,bornInf[args.decimList[0]]:bornSup[args.decimList[0]],:].contiguous()
            local_labels = local_labels[:,bornInf[args.decimList[0]]:bornSup[args.decimList[0]],:].contiguous() 
            local_batch, local_labels = local_batch.to(args.device,non_blocking=True), local_labels.to(args.device,non_blocking=True)
            
            self.train() 
            self.zero_grad()
            if args.alphaRep == "alphaRep":
                output = self(local_batch.float(), args, bornInf, bornSup)
            else:
                output = self(local_batch, args, bornInf, bornSup)
            #print(output.size())
            if args.decimList[0] != 1:
                loss = criterion(output, local_labels)
            else:
                output = output.transpose(1,2)
                topv, topi = local_labels.topk(1)
                topi = topi[:,:,0]
                #loss = criterion(output, local_labels)
                loss = criterion(output, topi)
                output = output.transpose(1,2)
            #print(topi.size())
            #loss = criterion(output, local_labels)
            #loss = criterion(output, topi)
            loss.backward()
            
            enc_optimizer.step()
            dec_optimizer.step()
            train_total_loss += loss
        return train_total_loss 
    
class MlpTensorFamily(nn.Module):
    def __init__(self):
        super(MlpTensorFamily, self).__init__()
        self.encoderTensor = nn.ModuleDict()
        self.decim = []
        
    def addEncoder(self, enc):
        self.encoder = enc
        
    def addDecoder(self, dec):
        self.decoder = dec

    def addEncoderTensor(self, model, decim):
        self.encoderTensor[str(decim)] = model
        self.decim.append(decim)
        
    def forward(self, x, u, args):
        out = []
        out.append(self.encoder(x))
        for d in range(args.lenSeq-1):
            data = u[d]
            out.append(self.encoderTensor[str(d)](data))
        out = torch.cat(out, 1)
        y = self.decoder(out)
        return y
    
    def train_epoch(self, training_generator, optimizer, criterion, bornInf, bornSup, tf_mappingR, args):
        train_total_loss = 0
        for local_batch, local_labels, local_key, local_beat in training_generator:
            if args.alphaRep == "alphaRep":
                local_batch = nn.functional.one_hot(local_batch.long(),self.encoder.n_categories)           
                local_labels = nn.functional.one_hot(local_labels.long(),self.encoder.n_categories)
            if len(args.decimList) == 1:
                local_batch = local_batch[:,bornInf[args.decimList[0]]:bornSup[args.decimList[0]],:].contiguous()
            local_labels = local_labels[:,bornInf[args.decimList[0]]:bornSup[args.decimList[0]],:].contiguous() 
            local_batch, local_labels = local_batch.to(args.device,non_blocking=True), local_labels.to(args.device,non_blocking=True)
            
            self.train() 
            self.zero_grad()
            if args.alphaRep == "alphaRep":
                output = self(local_batch.float())
            else:
                output = self(local_batch)
            #print(output.size())
            if args.decimList[0] != 1:
                loss = criterion(output, local_labels)
            else:
                output = output.transpose(1,2)
                topv, topi = local_labels.topk(1)
                topi = topi[:,:,0]
                #loss = criterion(output, local_labels)
                loss = criterion(output, topi)
                output = output.transpose(1,2)
            #print(topi.size())
            #loss = criterion(output, local_labels)
            #loss = criterion(output, topi)
            loss.backward()
            
            optimizer.step()
            train_total_loss += loss
        return train_total_loss 
    
class ModelFamilySum(nn.Module):
    def __init__(self):
        super(ModelFamilySum, self).__init__()
        self.models = nn.ModuleDict()
        self.decim = []

    def addModel(self, model, decim):
        self.models[decim] = model
        self.decim.append(decim)
        
    def forward(self, x, args):
        out = []
        i = 0
        for d in self.decim:
            if d != str(1) :
                data = x[i].to(args.device)
                data = self.models[d](data)
                data = data.repeat(1,int(d),1)
                data = data.div(int(d))
                out.append(data)
            i += 1
        data = x[0].to(args.device)
        out.append(self.models["1"](data))
        out = torch.stack(out)
        y = torch.sum(out, dim = 0)
        return y

    def train_epoch(self, training_generator, optimizer, criterion, bornInf, bornSup, tf_mappingR, args):
        train_total_loss = 0
        for local_batch, local_labels, local_key, local_beat in training_generator:
            if args.alphaRep == "alphaRep":
                local_batch = nn.functional.one_hot(local_batch.long(),self.encoder.n_categories)           
                local_labels = nn.functional.one_hot(local_labels.long(),self.encoder.n_categories)
            if len(args.decimList) == 1:
                local_batch = local_batch[:,bornInf[args.decimList[0]]:bornSup[args.decimList[0]],:].contiguous()
            local_labels = local_labels[:,bornInf[args.decimList[0]]:bornSup[args.decimList[0]],:].contiguous() 
            local_batch, local_labels = local_batch.to(args.device,non_blocking=True), local_labels.to(args.device,non_blocking=True)
            
            self.train() 
            self.zero_grad()
            if args.alphaRep == "alphaRep":
                output = self(local_batch.float())
            else:
                output = self(local_batch)
            #print(output.size())
            if args.decimList[0] != 1:
                loss = criterion(output, local_labels)
            else:
                output = output.transpose(1,2)
                topv, topi = local_labels.topk(1)
                topi = topi[:,:,0]
                #loss = criterion(output, local_labels)
                loss = criterion(output, topi)
                output = output.transpose(1,2)
            #print(topi.size())
            #loss = criterion(output, local_labels)
            #loss = criterion(output, topi)
            loss.backward()
            
            optimizer.step()
            train_total_loss += loss
        return train_total_loss 
    
    
class InOutModel(nn.Module):
    def __init__(self, encoder, decoder):
       super(InOutModel, self).__init__()
       self.encoder = encoder
       self.decoder = decoder
       
    def forward(self, x, t = None, biRep = False):
        if biRep:
            y = self.encoder(x,t)
        else:
            y = self.encoder(x)
        y = self.decoder(y)
        return y
    
    def train_epoch(self, training_generator, optimizer, criterion, bornInf, bornSup, tf_mappingR, args):
        train_total_loss = 0
        for local_batch, local_labels, local_key, local_beat in training_generator:
            if args.alphaRep == "alphaRep":
                local_batch = nn.functional.one_hot(local_batch.long(),self.encoder.n_categories)
                local_labels = nn.functional.one_hot(local_labels.long(),self.encoder.n_categories)
            if args.alphaRep == "biRep":
                u_x = torch.split(local_batch,1,1)
                local_batch_x = nn.functional.one_hot(torch.squeeze(u_x[0]).long(),self.encoder.n_categories)
                local_batch_t = nn.functional.one_hot(torch.squeeze(u_x[1]).long(),args.maxReps+1)
                local_labels = nn.functional.one_hot(local_labels.long(),self.encoder.n_categories)
            if len(args.decimList) == 1:
                local_batch = local_batch[:,bornInf[args.decimList[0]]:bornSup[args.decimList[0]],:].contiguous()
            local_labels = local_labels[:,bornInf[args.decimList[0]]:bornSup[args.decimList[0]],:].contiguous() 
            local_batch, local_labels = local_batch.to(args.device,non_blocking=True), local_labels.to(args.device,non_blocking=True)
            if args.alphaRep == "biRep":
                local_batch_x, local_batch_t = local_batch_x.to(args.device,non_blocking=True), local_batch_t.to(args.device,non_blocking=True)
            self.train() 
            self.zero_grad()
            if args.alphaRep == "alphaRep":
                output = self(local_batch.float())
            if args.alphaRep == "biRep":
                output = self(local_batch_x.float(), local_batch_t.float(), True)
            else:
                output = self(local_batch)
            #print(output.size())
            if args.decimList[0] != 1:
                loss = criterion(output, local_labels)
            else:
                output = output.transpose(1,2)
                topv, topi = local_labels.topk(1)
                topi = topi[:,:,0]
                #loss = criterion(output, local_labels)
                loss = criterion(output, topi)
                output = output.transpose(1,2)
            #print(topi.size())
            #loss = criterion(output, local_labels)
            #loss = criterion(output, topi)
            loss.backward()
            
            optimizer.step()
            train_total_loss += loss
        return train_total_loss
        
    
class InOutModelDouble(nn.Module):
    def __init__(self, encoder, encoderTensor, decoder):
       super(InOutModelDouble, self).__init__()
       self.encoder = encoder
       self.encoderTensor = encoderTensor
       self.decoder = decoder
       
    def forward(self, x, u):
        out = []
        y1 = self.encoder(x)
        out.append(y1)
        y2 = self.encoderTensor(u)
        out.append(y2)
        out = torch.cat(out, 1)
        y = self.decoder(out)
        return y
    
    def train_epoch(self, training_generator, optimizer, criterion, bornInf, bornSup, tf_mappingR, args):
        train_total_loss = 0
        for local_batch, local_labels, local_key, local_beat in training_generator:
            if len(args.decimList) == 1:
                local_batch = local_batch[:,bornInf[args.decimList[0]]:bornSup[args.decimList[0]],:].contiguous()
            local_labels = local_labels[:,bornInf[args.decimList[0]]:bornSup[args.decimList[0]],:].contiguous() 
            local_batch, local_labels = local_batch.to(args.device,non_blocking=True), local_labels.to(args.device,non_blocking=True)
            
            self.train() 
            self.zero_grad()
            tensorSim = computeTensor(local_batch, tf_mappingR.float())
            output = self(local_batch, tensorSim)
            loss = criterion(output, local_labels)
            loss.backward()
            
            optimizer.step()
            train_total_loss += loss
        return train_total_loss

class InOutModelDoubleKey(nn.Module):
    def __init__(self, encoder, encoderKey, decoder):
       super(InOutModelDoubleKey, self).__init__()
       self.encoder = encoder
       self.encoderKey = encoderKey
       self.decoder = decoder
       
    def forward(self, x, u):
        out = []
        y1 = self.encoder(x)
        out.append(y1)
        y2 = self.encoderKey(u)
        out.append(y2)
        out = torch.cat(out, 1)
        y = self.decoder(out)
        return y
    
    def train_epoch(self, training_generator, optimizer, criterion, bornInf, bornSup, tf_mappingR, args):
        train_total_loss = 0
        for local_batch, local_labels, local_key, local_beat in training_generator:
            if len(args.decimList) == 1:
                local_batch = local_batch[:,bornInf[args.decimList[0]]:bornSup[args.decimList[0]],:].contiguous()
            local_labels = local_labels[:,bornInf[args.decimList[0]]:bornSup[args.decimList[0]],:].contiguous() 
            local_batch, local_labels = local_batch.to(args.device,non_blocking=True), local_labels.to(args.device,non_blocking=True)
            local_beat = local_beat.to(args.device,non_blocking=True)
            local_key = local_key.to(args.device,non_blocking=True)
            self.train() 
            self.zero_grad()
            #tensorSim = computeTensor(local_batch, tf_mappingR.float())
            local_key = keyToOneHot(local_key)
            output = self(local_batch, local_key)
            #print(output.size())
            output = output.transpose(1,2)
            topv, topi = local_labels.topk(1)
            topi = topi[:,:,0]
            #print(topi.size())
            #loss = criterion(output, local_labels)
            loss = criterion(output, topi)
            loss.backward()
            
            optimizer.step()
            train_total_loss += loss
        return train_total_loss

class InOutModelDoubleBeat(nn.Module):
    def __init__(self, encoder, encoderBeat, decoder):
       super(InOutModelDoubleBeat, self).__init__()
       self.encoder = encoder
       self.encoderBeat = encoderBeat
       self.decoder = decoder
       
    def forward(self, x, u):
        out = []
        y1 = self.encoder(x)
        out.append(y1)
        y2 = self.encoderBeat(u)
        out.append(y2)
        out = torch.cat(out, 1)
        y = self.decoder(out)
        return y
    
    def train_epoch(self, training_generator, optimizer, criterion, bornInf, bornSup, tf_mappingR, args):
        train_total_loss = 0
        for local_batch, local_labels, local_key, local_beat in training_generator:
            if len(args.decimList) == 1:
                local_batch = local_batch[:,bornInf[args.decimList[0]]:bornSup[args.decimList[0]],:].contiguous()
            local_labels = local_labels[:,bornInf[args.decimList[0]]:bornSup[args.decimList[0]],:].contiguous() 
            local_batch, local_labels = local_batch.to(args.device,non_blocking=True), local_labels.to(args.device,non_blocking=True)
            local_beat = local_beat.to(args.device,non_blocking=True)
            local_key = local_key.to(args.device,non_blocking=True)            
            self.train() 
            self.zero_grad()
            #tensorSim = computeTensor(local_batch, tf_mappingR.float())
            local_beat = beatToOneHot(local_beat)
            output = self(local_batch, local_beat)
            #print(output.size())
            output = output.transpose(1,2)
            topv, topi = local_labels.topk(1)
            topi = topi[:,:,0]
            #print(topi.size())
            #loss = criterion(output, local_labels)
            loss = criterion(output, topi)
            loss.backward()
            
            optimizer.step()
            train_total_loss += loss
        return train_total_loss
    
class InOutModelTripleKeyBeat(nn.Module):
    def __init__(self, encoder, encoderBeat, encoderKey, decoder):
       super(InOutModelTripleKeyBeat, self).__init__()
       self.encoder = encoder
       self.encoderKey = encoderKey
       self.encoderBeat = encoderBeat
       self.decoder = decoder
       
    def forward(self, x, u, v):
        out = []
        y1 = self.encoder(x)
        out.append(y1)
        y2 = self.encoderKey(u)
        out.append(y2)
        y3 = self.encoderBeat(v)
        out.append(y3)
        out = torch.cat(out, 1)
        y = self.decoder(out)
        return y
    
    def train_epoch(self, training_generator, optimizer, criterion, bornInf, bornSup, tf_mappingR, args):
        train_total_loss = 0
        for local_batch, local_labels, local_key, local_beat in training_generator:
            if len(args.decimList) == 1:
                local_batch = local_batch[:,bornInf[args.decimList[0]]:bornSup[args.decimList[0]],:].contiguous()
            local_labels = local_labels[:,bornInf[args.decimList[0]]:bornSup[args.decimList[0]],:].contiguous() 
            local_batch, local_labels = local_batch.to(args.device,non_blocking=True), local_labels.to(args.device,non_blocking=True)
            local_beat = local_beat.to(args.device,non_blocking=True)
            local_key = local_key.to(args.device,non_blocking=True)            
            self.train() 
            self.zero_grad()
            #tensorSim = computeTensor(local_batch, tf_mappingR.float())
            local_key = keyToOneHot(local_key)
            local_beat = beatToOneHot(local_beat)
            output = self(local_batch, local_key, local_beat)
            #print(output.size())
            output = output.transpose(1,2)
            topv, topi = local_labels.topk(1)
            topi = topi[:,:,0]
            #print(topi.size())
            #loss = criterion(output, local_labels)
            loss = criterion(output, topi)
            loss.backward()
            
            optimizer.step()
            train_total_loss += loss
        return train_total_loss


class InOutModelTripleRawData(nn.Module):
    def __init__(self, encTensor1,encTensor2, decoder, args):
       super(InOutModelTripleRawData, self).__init__()
       self.encoderTensor1 = encTensor1
       self.encoderTensor2 = encTensor2
       self.decoder = decoder
       self.args = args
       
    def forward(self, x):
        out = []
        u = x.view(-1, int(self.args.lenSeq * self.args.n_categories))
        out.append(u)
        y2 = self.encoderTensor1(x)
        out.append(y2)
        y3 = self.encoderTensor2(x)
        out.append(y3)
        out = torch.cat(out, 1)
        y = self.decoder(out)
        y2 = nn.Softmax(dim=1)(y2)
        y3 = nn.Softmax(dim=1)(y3)
        return y, y2, y3
        #return y
        
    def train_epoch(self, training_generator, optimizerRecEnc, optimizerRecDec, optimizerKey, optimizerBeat, criterion, criterionKey, criterionBeat, bornInf, bornSup, tensorSim, args):
        train_total_loss = 0
        train_keytotal_loss = 0
        train_beattotal_loss = 0
        for local_batch, local_labels, local_key, local_beat in training_generator:
            if len(args.decimList) == 1:
                local_batch = local_batch[:,bornInf[args.decimList[0]]:bornSup[args.decimList[0]],:].contiguous()
            local_labels = local_labels[:,bornInf[args.decimList[0]]:bornSup[args.decimList[0]],:].contiguous() 
            local_batch, local_labels = local_batch.to(args.device,non_blocking=True), local_labels.to(args.device,non_blocking=True)
            local_beat = local_beat.to(args.device,non_blocking=True)
            local_key = local_key.to(args.device,non_blocking=True)
            self.train()
                
            if args.key == True:
                output, beat, key = self(local_batch)
                self.zero_grad()
                local_key = keyToOneHot(local_key)
                local_key = local_key[:,0,:]
                losskey = criterionKey(key, local_key)
                losskey.backward()
                train_keytotal_loss += losskey
                optimizerKey.step()
                
            if args.beat == True:
                output, beat, key = self(local_batch)
                self.zero_grad()
                local_beat = beatToOneHot(local_beat)
                local_beat = local_beat[:,0,:]
                lossbeat = criterionBeat(beat, local_beat)
                lossbeat.backward()
                train_beattotal_loss += lossbeat 
                optimizerBeat.step()
                
            if args.rec == True:
                output, beat, key = self(local_batch)
                self.zero_grad()
                loss = criterion(output, local_labels)
                loss.backward()
                train_total_loss += loss
                #optimizerRecEnc.step()
                optimizerRecDec.step()
                
        return train_total_loss, train_keytotal_loss, train_beattotal_loss
    
class InOutModelTriple(nn.Module):
    def __init__(self, encoder, encTensor1,encTensor2, decoder):
       super(InOutModelTriple, self).__init__()
       self.encoder = encoder
       self.encoderTensor1 = encTensor1
       self.encoderTensor2 = encTensor2
       self.decoder = decoder
       
    def forward(self, x):
        out = []
        y1 = self.encoder(x)
        out.append(y1)
        y2 = self.encoderTensor1(x)
        out.append(y2)
        y3 = self.encoderTensor2(x)
        out.append(y3)
        out = torch.cat(out, 1)
        y = self.decoder(out)
        y2 = nn.Softmax(dim=1)(y2)
        y3 = nn.Softmax(dim=1)(y3)
        return y, y2, y3
        #return y
        
    def train_epoch(self, training_generator, optimizerRecEnc, optimizerRecDec, optimizerKey, optimizerBeat, criterion, criterionKey, criterionBeat, bornInf, bornSup, tensorSim, args):
        train_total_loss = 0
        train_keytotal_loss = 0
        train_beattotal_loss = 0
        for local_batch, local_labels, local_key, local_beat in training_generator:
            if args.alphaRep == "alphaRep":
                local_batch = nn.functional.one_hot(local_batch.long(),args.n_categories)           
                local_labels = nn.functional.one_hot(local_labels.long(),args.n_categories)
            if len(args.decimList) == 1:
                local_batch = local_batch[:,bornInf[args.decimList[0]]:bornSup[args.decimList[0]],:].contiguous()
            local_labels = local_labels[:,bornInf[args.decimList[0]]:bornSup[args.decimList[0]],:].contiguous() 
            local_batch, local_labels = local_batch.to(args.device,non_blocking=True), local_labels.to(args.device,non_blocking=True)
            local_beat = local_beat.to(args.device,non_blocking=True)
            local_key = local_key.to(args.device,non_blocking=True)
            self.train()
                
            if args.key == True:
                #output, beat, key = self(local_batch)
                if args.alphaRep == "alphaRep":
                    output, beat, key = self(local_batch.float())
                else:
                    output, beat, key = self(local_batch)
                self.zero_grad()
                #local_key = keyToOneHot(local_key)
                #local_key = local_key[:,0,:]
                #print(key.size())
                #print(local_key.size())
                losskey = criterionKey(key, local_key[:,0].long())
                losskey.backward()
                train_keytotal_loss += losskey
                optimizerKey.step()
                
            if args.beat == True:
                #output, beat, key = self(local_batch)
                if args.alphaRep == "alphaRep":
                    output, beat, key = self(local_batch.float())
                else:
                    output, beat, key = self(local_batch)
                self.zero_grad()
                #local_beat = beatToOneHot(local_beat)
                #local_beat = local_beat[:,0,:]
                lossbeat = criterionBeat(beat, local_beat[:,0].long())
                lossbeat.backward()
                train_beattotal_loss += lossbeat 
                optimizerBeat.step()
                
            if args.rec == True:
                #output, beat, key = self(local_batch)
                if args.alphaRep == "alphaRep":
                    output, beat, key = self(local_batch.float())
                else:
                    output, beat, key = self(local_batch)
                self.zero_grad()
                output = output.transpose(1,2)
                topv, topi = local_labels.topk(1)
                topi = topi[:,:,0]
                #loss = criterion(output, local_labels)
                loss = criterion(output, topi)
                #output = output.transpose(1,2)
                #loss = criterion(output, local_labels)
                loss.backward()
                train_total_loss += loss
                optimizerRecEnc.step()
                optimizerRecDec.step()
                
        return train_total_loss, train_keytotal_loss, train_beattotal_loss
        
class InOutModelTripleMatrix(nn.Module):
    def __init__(self, encoder, encTensor1,encTensor2, decoder):
       super(InOutModelTripleMatrix, self).__init__()
       self.encoder = encoder
       self.encoderTensor1 = encTensor1
       self.encoderTensor2 = encTensor2
       self.decoder = decoder
       
    def forward(self, x, m):
        out = []
        y1 = self.encoder(x, m)
        out.append(y1)
        y2 = self.encoderTensor1(x, m)
        out.append(y2)
        y3 = self.encoderTensor2(x, m)
        out.append(y3)
        out = torch.cat(out, 1)
        y = self.decoder(out)
        y2 = nn.Softmax(dim=1)(y2)
        y3 = nn.Softmax(dim=1)(y3)
        return y, y2, y3
        #return y
        
    def train_epoch(self, training_generator, optimizerRecEnc, optimizerRecDec, optimizerKey, optimizerBeat, criterion, criterionKey, criterionBeat, bornInf, bornSup, tf_mappingR, args):
        train_total_loss = 0
        train_keytotal_loss = 0
        train_beattotal_loss = 0
        for local_batch, local_labels, local_key, local_beat in training_generator:
            if len(args.decimList) == 1:
                local_batch = local_batch[:,bornInf[args.decimList[0]]:bornSup[args.decimList[0]],:].contiguous()
            local_labels = local_labels[:,bornInf[args.decimList[0]]:bornSup[args.decimList[0]],:].contiguous() 
            local_batch, local_labels = local_batch.to(args.device,non_blocking=True), local_labels.to(args.device,non_blocking=True) 
            local_beat = local_beat.to(args.device,non_blocking=True)
            local_key = local_key.to(args.device,non_blocking=True)
            self.train()
            tensorSim = computeTensor(local_batch, tf_mappingR.float())
                
            if args.key == True:
                output, beat, key = self(local_batch, tensorSim)
                self.zero_grad()
                local_key = keyToOneHot(local_key)
                local_key = local_key[:,0,:]
                losskey = criterionKey(key, local_key)
                losskey.backward()
                train_keytotal_loss += losskey
                optimizerKey.step()
                
            if args.beat == True:
                output, beat, key = self(local_batch, tensorSim)
                self.zero_grad()
                local_beat = beatToOneHot(local_beat)
                local_beat = local_beat[:,0,:]
                lossbeat = criterionBeat(beat, local_beat)
                lossbeat.backward()
                train_beattotal_loss += lossbeat 
                optimizerBeat.step()
                
            if args.rec == True:
                output, beat, key = self(local_batch, tensorSim)
                self.zero_grad()
                loss = criterion(output, local_labels)
                loss.backward()
                train_total_loss += loss
                optimizerRecEnc.step()
                optimizerRecDec.step()
                
        return train_total_loss, train_keytotal_loss, train_beattotal_loss
    
    
        
class InOutModelTripleMatrixBis(nn.Module):
    def __init__(self, encoder, encTensor1,encTensor2, decoder):
       super(InOutModelTripleMatrixBis, self).__init__()
       self.encoder = encoder
       self.encoderTensor1 = encTensor1
       self.encoderTensor2 = encTensor2
       self.decoder = decoder
       
    def forward(self, x, m):
        out = []
        y1 = self.encoder(x, m)
        out.append(y1)
        y2 = self.encoderTensor1(x)
        out.append(y2)
        y3 = self.encoderTensor2(x)
        out.append(y3)
        out = torch.cat(out, 1)
        y = self.decoder(out)
        y2 = nn.Softmax(dim=1)(y2)
        y3 = nn.Softmax(dim=1)(y3)
        return y, y2, y3
        #return y
        
class InOutModelTripleOLD1402(nn.Module):
    def __init__(self, encoder, encTensor1,encTensor2, decoder):
       super(InOutModelTripleOLD1402, self).__init__()
       self.encoder = encoder
       self.encoderTensor1 = encTensor1
       self.encoderTensor2 = encTensor2
       self.decoder = decoder
       
    def forward(self, x, u,v):
        out = []
        y1 = self.encoder(x)
        out.append(y1)
        y2 = self.encoderTensor1(u)
        out.append(y2)
        y3 = self.encoderTensor2(v)
        out.append(y3)
        out = torch.cat(out, 1)
        y = self.decoder(out)
        return y, y2, y3
        #return y
    
class FinalModel(nn.Module):
    def __init__(self, encoder, decoder):
       super(FinalModel, self).__init__()
       self.encoder = encoder
       self.decoder = decoder
       
    def forward(self, x, out):
        y = self.encoder(x)
        y = self.decoder(y, out)
        return y
       
class EncoderMLP(nn.Module):
    def __init__(self, lenSeq, n_categories, n_hidden, n_latent, decimRatio,n_layer = 1, dropRatio = 0.5):
        super(EncoderMLP, self).__init__()
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
    
class EncoderMLPBiRep(nn.Module):
    def __init__(self, lenSeq, n_categories, n_maxRep, n_hidden, n_latent, decimRatio,n_layer = 1, dropRatio = 0.5):
        super(EncoderMLPBiRep, self).__init__()
        self.fc1 = nn.Linear(int(lenSeq * n_categories / decimRatio), n_hidden)
        self.bn1 = nn.BatchNorm1d(n_hidden)
        self.fc1bi = nn.Linear(int(lenSeq * n_maxRep / decimRatio), n_hidden)
        self.bn1bi = nn.BatchNorm1d(n_hidden)
        self.f_merge = nn.Linear(n_hidden*2, n_hidden)
        self.bn_merge = nn.BatchNorm1d(n_hidden)
        self.fc2 = nn.ModuleList()
        self.bn2 = nn.ModuleList()
        for i in range(n_layer):
            self.fc2.append(nn.Linear(n_hidden, n_hidden))
            self.bn2.append(nn.BatchNorm1d(n_hidden))
        self.fc3 = nn.Linear(n_hidden, n_latent)
        self.drop_layer = nn.Dropout(p=dropRatio)
        self.n_categories = n_categories
        self.n_maxRep = n_maxRep
        self.decimRatio = decimRatio
        self.lenSeq = lenSeq
        self.n_layer = n_layer
    def forward(self, x1,x2):
        x1 = x1.view(-1, int(self.lenSeq * self.n_categories/ self.decimRatio))
        x1 = F.relu(self.bn1(self.fc1(x1)))
        x2 = x2.view(-1, int(self.lenSeq * self.n_maxRep/ self.decimRatio))
        x2 = F.relu(self.bn1bi(self.fc1bi(x2)))
        #add merge function
        x = torch.cat((x1, x2), dim=1)
        x = F.relu(self.bn_merge(self.f_merge(x)))
        #add merge function
        for i in range(self.n_layer):
            x = self.drop_layer(x)
            x = F.relu(self.bn2[i](self.fc2[i](x)))
        x = self.fc3(x)
        return x
    
class NetConv(nn.Module):
    def __init__(self):
        super(NetConv, self).__init__()
        self.conv1 = nn.Conv2d(1, 10, kernel_size=4,padding=True)
        self.conv2 = nn.Conv2d(10, 20, kernel_size=3,padding=True)
        self.conv2_drop = nn.Dropout2d()
        self.fc1 = nn.Linear(20, 50)
        self.fc2 = nn.Linear(50, 5)

    def forward(self, x):
        x = F.relu(F.max_pool2d(self.conv1(x.view(-1,1,8,8)), 2))
        x = F.relu(F.max_pool2d(self.conv2_drop(self.conv2(x)), 2))
        x = x.view(-1, 20)
        x = F.relu(self.fc1(x))
        x = F.dropout(x, training=self.training)
        x = self.fc2(x)
        #return F.log_softmax(x)
        return x

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
            GaussianNoise(args, 0.3),
            nn.Conv2d(1, 64, kernel_size=(3,25), stride=1, padding=0),
            nn.BatchNorm2d(64),
            nn.ReLU(),
            nn.Dropout(drop_outRate),
            #nn.MaxPool2d(kernel_size=(3,1), stride=1),
            nn.Conv2d(64, 32, kernel_size=(6,1), stride=1, padding=0),
            nn.BatchNorm2d(32),
            nn.ReLU(),
            nn.Dropout(drop_outRate),
            nn.Conv2d(32, 200, kernel_size=(1,1), stride=1, padding=0),
            nn.BatchNorm2d(200),
            nn.ReLU(),
            nn.Dropout(drop_outRate))
        self.layer5 = nn.Sequential(nn.Linear(200,200), nn.Linear(200,50))
        
    def forward(self, x):
        out = self.layer1(x)                                                                                                                                                                                                                                               
        out = out.view(out.size(0), -1)
        out = self.layer5(out)
        return out

class dilatConv(nn.Module):
    def __init__(self, lenSeq, lenPred, n_categories, latent):
        super(dilatConv, self).__init__()
        self.conv1 = nn.Conv2d(1, 250, 2, 1, dilation = (2,1))
        self.conv2 = nn.Conv2d(250, 25, 2, 1, dilation = (4,1))
        self.fc1 = nn.Linear(1150, 500)
        self.fc2 = nn.Linear(500, latent)
        self.lenPred = lenPred
        self.lenSeq = lenSeq
        self.n_categories = n_categories
        self.latent = latent

    def forward(self, x):
        x = x.view(-1, 1, self.lenSeq, self.n_categories)
        x = F.relu(self.conv1(x))
        x = F.relu(self.conv2(x))
        x = x.view(-1, 1150)
        x = F.relu(self.fc1(x))
        x = self.fc2(x)

        return x
    
    def name(self):
        return "dilatConv"
    
class dilatConvBatch(nn.Module):
    def __init__(self, lenSeq, lenPred, n_categories, latent, drop_outRate = 0.6):
        super(dilatConvBatch, self).__init__()
        self.batch0 = nn.BatchNorm2d(1)
        self.conv1 = nn.Conv2d(1, 250, 2, 1, dilation = (2,1))
        self.batch1 = nn.BatchNorm2d(250)
        self.do1 = nn.Dropout(drop_outRate)
        self.conv2 = nn.Conv2d(250, 25, 2, 1, dilation = (4,1))
        self.batch2 = nn.BatchNorm2d(25)
        self.do2 = nn.Dropout(drop_outRate)
        self.fc1 = nn.Linear(1150, 500)
        self.fc2 = nn.Linear(500, latent)
        self.lenPred = lenPred
        self.lenSeq = lenSeq
        self.n_categories = n_categories
        self.latent = latent

    def forward(self, x):
        x = self.batch0(x.view(-1, 1, self.lenSeq, self.n_categories))
        x = self.do1(F.relu(self.batch1(self.conv1(x))))
        x = self.do2(F.relu(self.batch2(self.conv2(x))))
        x = x.view(-1, 1150)
        x = F.relu(self.fc1(x))
        x = self.fc2(x)

        return x
    
class dilatConvBatchV2(nn.Module):
    def __init__(self, lenSeq, lenPred, n_categories, latent, drop_outRate = 0.6):
        super(dilatConvBatchV2, self).__init__()
        self.batch0 = nn.BatchNorm2d(1)
        self.conv1 = nn.Conv2d(1, 50, (2,25), 1, dilation = (2,1))
        self.batch1 = nn.BatchNorm2d(50)
        self.do1 = nn.Dropout(drop_outRate)
        self.conv2 = nn.Conv2d(50, 30, (2,1) , 1, dilation = (4,1))
        self.batch2 = nn.BatchNorm2d(30)
        self.do2 = nn.Dropout(drop_outRate)
        #self.conv3 = nn.Conv2d(30, 10, 2, 1, dilation = (8,1))
        #self.batch3 = nn.BatchNorm2d(10)
        #self.do3 = nn.Dropout(drop_outRate)
        self.fc1 = nn.Linear(60, 100)
        self.fc2 = nn.Linear(100, latent)
        self.lenPred = lenPred
        self.lenSeq = lenSeq
        self.n_categories = n_categories
        self.latent = latent

    def forward(self, x):
        x = self.batch0(x.view(-1, 1, self.lenSeq, self.n_categories))
        x = self.do1(F.relu(self.batch1(self.conv1(x))))
        x = self.do2(F.relu(self.batch2(self.conv2(x))))
        #x = self.do3(F.relu(self.batch3(self.conv3(x))))
        x = x.view(-1, 60)
        x = F.relu(self.fc1(x))
        x = self.fc2(x)

        return x
    
    def name(self):
        return "dilatConv"
    
class DecoderMLP(nn.Module):
    def __init__(self, lenPred, n_categories, n_hidden, n_latent, decimRatio, n_layer = 1, dropRatio = 0.5):
        super(DecoderMLP, self).__init__()
        self.fc1 = nn.Linear(n_latent , n_hidden)
        self.bn1 = nn.BatchNorm1d(n_hidden)
        self.fc2 = nn.ModuleList()
        self.bn2 = nn.ModuleList()
        for i in range(n_layer):
            self.fc2.append(nn.Linear(n_hidden, n_hidden))
            self.bn2.append(nn.BatchNorm1d(n_hidden))
        self.fc3 = nn.Linear(n_hidden, int(lenPred * n_categories / decimRatio))
        self.drop_layer = nn.Dropout(p=dropRatio)
        self.n_categories = n_categories
        self.decimRatio = decimRatio
        self.lenPred = lenPred
        self.n_layer = n_layer
    def forward(self, x):
        x = F.relu(self.bn1(self.fc1(x)))
        for i in range(self.n_layer):
            x = self.drop_layer(x)
            x = F.relu(self.bn2[i](self.fc2[i](x)))
        x = self.fc3(x)
        x = x.view(-1, int(self.lenPred / self.decimRatio), self.n_categories)
        #if self.decimRatio == 1 :
        #    x = nn.Softmax(dim=2)(x)
        if self.decimRatio != 1 :
            x = F.relu(x)
        return x
    
class DecoderMLPKey(nn.Module):
    def __init__(self, lenPred, n_categories, n_hidden, n_latent, decimRatio, n_layer = 1, dropRatio = 0.5):
        super(DecoderMLPKey, self).__init__()
        self.fc1 = nn.Linear(n_latent , n_hidden)
        self.bn1 = nn.BatchNorm1d(n_hidden)
        self.fc2 = nn.ModuleList()
        self.bn2 = nn.ModuleList()
        for i in range(n_layer):
            self.fc2.append(nn.Linear(n_hidden, n_hidden))
            self.bn2.append(nn.BatchNorm1d(n_hidden))
        self.fc3 = nn.Linear(n_hidden, int(lenPred * n_categories / decimRatio))
        self.drop_layer = nn.Dropout(p=dropRatio)
        self.n_categories = n_categories
        self.decimRatio = decimRatio
        self.lenPred = lenPred
        self.n_layer = n_layer
    def forward(self, x):
        x = F.relu(self.bn1(self.fc1(x)))
        for i in range(self.n_layer):
            x = self.drop_layer(x)
            x = F.relu(self.bn2[i](self.fc2[i](x)))
        x = self.fc3(x)
        x = x.view(-1, self.n_categories)
        #if self.decimRatio == 1 :
        #    x = nn.Softmax(dim=1)(x)
        #else:
        #    x = F.relu(x)
        #x = F.sigmoid(x)
        return x  
    
class DecoderFinal(nn.Module):
    def __init__(self, lenSeq, lenPred, n_categories, n_hidden, n_latent, n_layer = 1, dropRatio = 0.5):
        super(DecoderFinal, self).__init__()
        self.fc1 = nn.Linear(n_latent , n_hidden)
        self.bn1 = nn.BatchNorm1d(n_hidden)
        self.fc2 = nn.ModuleList()
        self.bn2 = nn.ModuleList()
        for i in range(n_layer):
            self.fc2.append(nn.Linear(n_hidden, n_hidden))
            self.bn2.append(nn.BatchNorm1d(n_hidden))
        self.fc3 = nn.Linear(n_hidden, lenPred * n_categories)
        self.drop_layer = nn.Dropout(p=dropRatio)
        self.n_categories = n_categories
        self.lenPred = lenPred
        self.n_layer = n_layer
    def forward(self, x, out):
        x = torch.cat((x,out), 1) 
        x = F.relu(self.bn1(self.fc1(x)))
        for i in range(self.n_layer):
            x = self.drop_layer(x)
            x = F.relu(self.bn2[i](self.fc2[i](x)))
        x = self.fc3(x)
        x = x.view(-1, self.lenPred, self.n_categories)
        #x = nn.Softmax(dim=2)(x)
        return x

#%%
#%%
class VAEModelFamily(nn.Module):
    def __init__(self):
        super(VAEModelFamily, self).__init__()
        self.models = nn.ModuleDict()
        self.decim = []

    def addModel(self, model, decim):
        self.models[decim] = model
        self.decim.append(decim)     
        
    def reparametrize(self, mu, logvar):
        std = torch.exp(0.5*logvar)
        eps = torch.randn_like(std)
        return mu + eps*std 
    def forward(self, x, args):
        out = []
        i = 0
        for d in self.decim:
            if d != str(1) :
                data = x[i].to(args.device)
                out1, out2 = self.models[d].encoder(data)
                out.append(self.reparametrize(out1,out2))
            i += 1
        out = torch.cat(out, 1)
        data = x[0].to(args.device)
        #print(data)
        y = self.models["1"](data,out)
        return y
    
class VAEInOutModel(nn.Module):
    def __init__(self, encoder, decoder):
       super(VAEInOutModel, self).__init__()
       self.encoder = encoder
       self.decoder = decoder
       
    def forward(self, x):
        y1, y2 = self.encoder(x)
        y = self.decoder(y1, y2)
        return y
    
class VAEFinalModel(nn.Module):
    def __init__(self, encoder, decoder):
       super(VAEFinalModel, self).__init__()
       self.encoder = encoder
       self.decoder = decoder
       
    def forward(self, x, out):
        y1, y2 = self.encoder(x)
        y = self.decoder(y1, y2, out)
        return y
       
class VAEEncoderMLP(nn.Module):
    def __init__(self, lenSeq, n_categories, n_hidden, n_latent, decimRatio, n_layer = 1, dropRatio = 0.5):
        super(VAEEncoderMLP, self).__init__()
        self.fc1 = nn.Linear(int(lenSeq * n_categories / decimRatio), n_hidden)
        self.fc2 = nn.ModuleList()
        for i in range(n_layer):
            self.fc2.append(nn.Linear(n_hidden, n_hidden))
        self.fc31 = nn.Linear(n_hidden, n_latent)
        self.fc32 = nn.Linear(n_hidden, n_latent)
        self.drop_layer = nn.Dropout(p=dropRatio)
        self.n_categories = n_categories
        self.decimRatio = decimRatio
        self.lenSeq = lenSeq
        self.n_layer = n_layer
    def forward(self, x):
        x = x.view(-1, int(self.lenSeq * self.n_categories/ self.decimRatio))
        x = F.relu(self.fc1(x))
        for i in range(self.n_layer):
            x = self.drop_layer(x)
            x = F.relu(self.fc2[i](x))
        x1 = self.fc31(x)
        x2 = self.fc32(x)
        return x1, x2
    
class VAEDecoderMLP(nn.Module):
    def __init__(self, lenPred, n_categories, n_hidden, n_latent, decimRatio, n_layer = 1, dropRatio = 0.5):
        super(VAEDecoderMLP, self).__init__()
        self.fc1 = nn.Linear(n_latent , n_hidden)
        self.fc2 = nn.ModuleList()
        for i in range(n_layer):
            self.fc2.append(nn.Linear(n_hidden, n_hidden))
        self.fc3 = nn.Linear(n_hidden, int(lenPred * n_categories / decimRatio))
        self.drop_layer = nn.Dropout(p=dropRatio)
        self.n_categories = n_categories
        self.decimRatio = decimRatio
        self.lenPred = lenPred
        self.n_layer = n_layer
    def reparametrize(self, mu, logvar):
        std = torch.exp(0.5*logvar)
        eps = torch.randn_like(std)
        return mu + eps*std        
    def forward(self, x1, x2):
        z = self.reparametrize(x1, x2)
        x = F.relu(self.fc1(z))
        for i in range(self.n_layer):
            x = self.drop_layer(x)
            x = F.relu(self.fc2[i](x))
        x = self.fc3(x)
        x = x.view(-1, int(self.lenPred / self.decimRatio), self.n_categories)
        if self.decimRatio == 1 :
            x = nn.Softmax(dim=2)(x)
        return x, x1, x2
    
class VAEDecoderFinal(nn.Module):
    def __init__(self, lenSeq, lenPred, n_categories, n_hidden, n_latent, n_layer = 1, dropRatio = 0.5):
        super(VAEDecoderFinal, self).__init__()
        self.fc1 = nn.Linear(n_latent , n_hidden)
        self.fc2 = nn.ModuleList()
        for i in range(n_layer):
            self.fc2.append(nn.Linear(n_hidden, n_hidden))
        self.fc3 = nn.Linear(n_hidden, lenPred * n_categories)
        self.drop_layer = nn.Dropout(p=dropRatio)
        self.n_categories = n_categories
        self.lenPred = lenPred
        self.n_layer = n_layer
    def reparametrize(self, mu, logvar):
        std = torch.exp(0.5*logvar)
        eps = torch.randn_like(std)
        return mu + eps*std
    def forward(self, x1, x2, out):
        x = self.reparametrize(x1, x2)
        x = torch.cat([x,out], 1) 
        x = F.relu(self.fc1(x))
        for i in range(self.n_layer):
            x = self.drop_layer(x)
            x = F.relu(self.fc2[i](x))
        x = self.fc3(x)
        x = x.view(-1, self.lenPred, self.n_categories)
        x = nn.Softmax(dim=2)(x)
        return x, x1, x2
#%%
class MLPNet(nn.Module):
    def __init__(self, lenSeq, lenPred, n_categories):
        super(MLPNet, self).__init__()
        self.fc1 = nn.Linear(lenSeq * n_categories, 1000)
        self.fc2 = nn.Linear(1000, 1000)
        self.fc3 = nn.Linear(1000, lenPred * n_categories)
        self.lenPred = lenPred
        self.n_categories = n_categories
    def forward(self, x):
        x = x.view(-1, 16*25)
        x = F.relu(self.fc1(x))
        x = F.relu(self.fc2(x))
        x = self.fc3(x)
        x = x.view(-1, self.lenPred, self.n_categories)
        x = nn.Softmax(dim=2)(x)
        return x
    
#%%
class LeNet(nn.Module):
    def __init__(self, lenSeq, lenPred, n_categories):
        super(LeNet, self).__init__()
        self.conv1 = nn.Conv2d(1, 20, 5, 1)
        self.conv2 = nn.Conv2d(20, 50, 5, 1)
        self.fc1 = nn.Linear(8*17*50, 500)
        self.fc2 = nn.Linear(500, lenPred * n_categories)
        self.lenPred = lenPred
        self.lenSeq = lenSeq
        self.n_categories = n_categories

    def forward(self, x):
        x = x.view(-1, 1, self.lenSeq, self.n_categories)
        x = F.relu(self.conv1(x))
        #x = F.max_pool2d(x, 2, 2)
        x = F.relu(self.conv2(x))
        #x = F.max_pool2d(x, 2, 2)
        x = x.view(-1, 8*17*50)
        x = F.relu(self.fc1(x))
        x = self.fc2(x)
        x = x.view(-1, self.lenPred, self.n_categories)
        x = nn.Softmax(dim=2)(x)
        return x
    
    def name(self):
        return "LeNet"
    
#%%

#%%
n_inputs = 25
n_hidden = 128
batch_size = 500
lenSeq = 16
n_categories=25
class MockupModel(nn.Module):

    def __init__(self):
        super().__init__()
        self.model = nn.ModuleDict({
            'lstm': nn.LSTM(
                input_size=n_inputs,    # 45, see the data definition
                hidden_size=n_hidden,  # Can vary
                num_layers = 3,
                dropout = 0.6, #0.6
                batch_first = True
            ),
            'linear': nn.Linear(
                in_features=n_hidden,
                out_features=n_categories)
        })
            
    def forward(self, x):

        # From [batches, seqs, seq len, features]
        # to [seq len, batch data, features]
        # Data is fed to the LSTM
        out, _ = self.model['lstm'](x)
        #print(f'lstm output={out.size()}')

        # From [seq len, batch, num_directions * hidden_size]
        # to [batches, seqs, seq_len,prediction]
        out = out.view(batch_size, lenSeq, -1)
        #print(f'transformed output={out.size()}')

        # Data is fed to the Linear layer
        out = self.model['linear'](out)
        #print(f'linear output={out.size()}')

        # The prediction utilizing the whole sequence is the last one
        #y_pred = nn.Softmax()(y_pred)
        y_pred = out[:, -1]
        y_pred = nn.Softmax()(y_pred)
        
        #print(f'y_pred={y_pred.size()}')

        return y_pred
#%%    
class MockupModelMask(nn.Module):

    def __init__(self):
        super().__init__()
        self.model = nn.ModuleDict({
            'lstm': nn.LSTM(
                input_size=n_inputs,    # 45, see the data definition
                hidden_size=n_hidden,  # Can vary
                num_layers = 3,
                dropout = 0.6, #0.6
                batch_first = True
            ),
            'linear': nn.Linear(
                in_features=n_hidden,
                out_features=n_categories)
        })
            
    def forward(self, x, nbZero, mask = False):

        # From [batches, seqs, seq len, features]
        # to [seq len, batch data, features]
        if mask == True:
            for i in range(x.size()[0]):
                for j in range(nbZero):
                    x[i][randint(0,15)] = torch.zeros(n_inputs)
        # Data is fed to the LSTM
        out, _ = self.model['lstm'](x)
        #print(f'lstm output={out.size()}')

        # From [seq len, batch, num_directions * hidden_size]
        # to [batches, seqs, seq_len,prediction]
        out = out.view(batch_size, lenSeq, -1)
        #print(f'transformed output={out.size()}')

        # Data is fed to the Linear layer
        out = self.model['linear'](out)
        #print(f'linear output={out.size()}')

        # The prediction utilizing the whole sequence is the last one
        #y_pred = nn.Softmax()(y_pred)
        y_pred = out[:, -1]
        y_pred = nn.Softmax()(y_pred)
        
        #print(f'y_pred={y_pred.size()}')
#%%
class ResBlock(nn.Module):
    def __init__(self, dim, dim_res=32):
        super().__init__()
        self.block = nn.Sequential(
            nn.ReLU(True),
            nn.Conv2d(dim, dim_res, 3, 1, 1),
            nn.BatchNorm2d(dim_res),
            nn.ReLU(True),
            nn.Conv2d(dim_res, dim, 1),
            nn.BatchNorm2d(dim),
            nn.ReLU(True)
        )

    def forward(self, x):
        return x + self.block(x)
    
class View1(nn.Module):
   def __init__(self):
        super(View1, self).__init__()
   
   def forward(self, x):
        return x.view(-1,16*24)
    
class View2(nn.Module):
   def __init__(self):
        super(View2, self).__init__()
   
   def forward(self, x):
        return x.view(-1,1,16,25) #make it with lenPred
#%%
# Construct encoders and decoders for different types
def construct_enc_dec(input_dim, dim, embed_dim = 64):
    encoder, decoder = None, None
    # Image data
    encoder = nn.Sequential(
        nn.Conv2d(input_dim, int(dim / 2), 4, 2, 1),
        #nn.BatchNorm2d(dim),
        nn.ReLU(True),
        nn.Conv2d(int(dim / 2), dim, 4, 2, 1),
        #nn.BatchNorm2d(dim),
        nn.ReLU(True),
        nn.Conv2d(dim, dim, 3, 1, 1),
        ResBlock(dim),
        ResBlock(dim),
        nn.Conv2d(dim, embed_dim, 1)
    )
    decoder = nn.Sequential(
        nn.ConvTranspose2d(embed_dim, dim, 3, 1, 1),
        ResBlock(dim),
        ResBlock(dim),
        nn.ConvTranspose2d(dim, int(dim / 2), 4, 2, 1),
        #nn.BatchNorm2d(dim),
        nn.ReLU(True),
        nn.ConvTranspose2d(int(dim / 2), input_dim, 4, 2, 1),
        View1(),
        nn.Linear(16*24,16*25), #make it with lenPred
        View2()
        #nn.Tanh()
    )
    return encoder, decoder

#%% Seq 2 Seq from https://pytorch.org/tutorials/intermediate/seq2seq_translation_tutorial.html -> see also attention is page
class EncoderRNN(nn.Module):
    def __init__(self, input_size, hidden_size, device):
        super(EncoderRNN, self).__init__()
        self.hidden_size = hidden_size

        self.embedding = nn.Embedding(input_size, hidden_size)
        self.gru = nn.GRU(hidden_size, hidden_size)
        
        self.device = device
        
    def forward(self, input, hidden):
        embedded = self.embedding(input).view(1, 1, -1)
        output = embedded
        output, hidden = self.gru(output, hidden)
        return output, hidden

    def initHidden(self):
        return torch.zeros(1, 1, self.hidden_size, device=self.device)
    
class DecoderRNN(nn.Module):
    def __init__(self, hidden_size, output_size, device):
        super(DecoderRNN, self).__init__()
        self.hidden_size = hidden_size

        self.embedding = nn.Embedding(output_size, hidden_size)
        self.gru = nn.GRU(hidden_size, hidden_size)
        self.out = nn.Linear(hidden_size, output_size)
        self.softmax = nn.LogSoftmax(dim=1)
        
        self.device = device

    def forward(self, input, hidden):
        output = self.embedding(input).view(1, 1, -1)
        output = F.relu(output)
        output, hidden = self.gru(output, hidden)
        output = self.softmax(self.out(output[0]))
        return output, hidden

    def initHidden(self):
        return torch.zeros(1, 1, self.hidden_size, device=self.device)
    

    
