#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Jan  9 18:00:12 2019

@author: carsault
"""
import torch
import torch.nn as nn
import torch.nn.functional as F
from torch.autograd import Variable
import random
import numpy as np
#%% https://github.com/pengyuchen/PyTorch-Batch-Seq2seq/blob/master/seq2seq_translation_tutorial.py
# Seq 2 Seq from https://pytorch.org/tutorials/intermediate/seq2seq_translation_tutorial.html -> see also attention is page, not using batched WTF
# https://github.com/howardyclo/pytorch-seq2seq-example/blob/master/seq2seq.ipynb -> the best one !
class EncoderRNN(nn.Module):
    def __init__(self, args, input_size, hidden_size, n_layers=2):
        super(EncoderRNN, self).__init__()
        self.n_layers = n_layers
        self.hidden_size = hidden_size
        self.input_size = input_size 
        self.lstm = nn.LSTM(
                input_size=self.input_size,    # 45, see the data definition
                hidden_size=self.hidden_size,  # Can vary
                num_layers = self.n_layers,
                dropout = args.dropRatio, #0.6
                batch_first = True
                )
    def forward(self, input_seq, encoder_hidden):
        if encoder_hidden:
            output, hidden = self.lstm(input_seq, encoder_hidden)
        else:
            output, hidden = self.lstm(input_seq)
        return output, hidden
    

class DecoderRNN(nn.Module):
    def __init__(self, args, vocab_size, hidden_size, n_layers=2, bias = True):
        super(DecoderRNN, self).__init__()
        self.n_layers = n_layers
        self.hidden_size = hidden_size
        self.vocab_size = vocab_size
        
        self.lstm = nn.LSTM(
                input_size=self.vocab_size,    # 45, see the data definition
                hidden_size=self.hidden_size,  # Can vary
                num_layers = self.n_layers,
                dropout = args.dropRatio, #0.6
                batch_first = True
                )
        self.W_s = nn.Linear(self.hidden_size, self.vocab_size, bias=bias)
        #self.re = nn.ReLU()
    def forward(self, input_seq, decoder_hidden):
        decoder_output, decoder_hidden = self.lstm(input_seq, decoder_hidden)
        # (seq_len=1, batch_size, hidden_size) => (batch_size, seq_len=1, hidden_size)
        decoder_output = decoder_output.transpose(0,1)
        output = self.W_s(decoder_output)
        output = nn.Softmax(dim=2)(output)
        #output = self.re(output)
        return output, decoder_hidden
    
class EncoderRNNattention(nn.Module):
    def __init__(self, args, input_size, hidden_size, n_latent, n_layers=2, bias = True, expand = False):
        super(EncoderRNNattention, self).__init__()
        self.n_layers = n_layers
        self.hidden_size = hidden_size
        self.input_size = input_size
        self.n_latent = n_latent
        self.bn1 = nn.BatchNorm1d(8)
        self.expand = expand
        self.lstm = nn.LSTM(
                input_size=self.input_size,    # 45, see the data definition
                hidden_size=self.hidden_size,  # Can vary
                num_layers = self.n_layers,
                dropout = args.dropRatio, #0.6
                batch_first = True
                )
        if self.expand:
            self.W_reduceStates = nn.Linear(self.hidden_size, self.n_latent, bias=bias)
            self.W_reduceCells = nn.Linear(self.hidden_size, self.n_latent, bias=bias)
    def forward(self, input_seq, encoder_hidden):
        #output, hidden = self.lstm(input_seq)
        #input_seq = self.bn1(input_seq)
        if encoder_hidden:
            output, (states, cells) = self.lstm(input_seq, encoder_hidden)
        else:
            output, (states, cells) = self.lstm(input_seq)
        if self.expand == True :
            states = self.W_reduceStates(states)
            cells = self.W_reduceCells(cells)
        hidden = (states, cells)
        return output, hidden
    
class DecoderRNNattention(nn.Module):
    def __init__(self, args, vocab_size, hidden_size, n_latent, n_layers=2, bias = True, attention = False, expand = False):
        super(DecoderRNNattention, self).__init__()
        self.n_layers = n_layers
        self.hidden_size = hidden_size
        self.vocab_size = vocab_size
        self.n_latent = n_latent
        self.lenSeq = args.lenSeq
        self.args = args
        self.attention = attention
        self.expand = expand
        self.lstm = nn.LSTM(
                input_size=self.vocab_size,    # 45, see the data definition
                hidden_size=self.hidden_size,  # Can vary
                num_layers = self.n_layers,
                dropout = args.dropRatio, #0.6
                batch_first = True
                )
        self.W_s = nn.Linear(self.hidden_size, self.vocab_size, bias=bias)
        
        if self.attention:
            self.W_a = nn.Linear(self.hidden_size,
                                 self.hidden_size, bias=bias)
            self.W_c = nn.Linear(self.hidden_size  + self.hidden_size, 
                                 self.hidden_size, bias=bias)
            
        if self.expand:
            self.W_expandStates = nn.Linear(self.n_latent, self.hidden_size, bias=bias)
            self.W_expandCells = nn.Linear(self.n_latent, self.hidden_size, bias=bias)
            self.W_reduceStates = nn.Linear(self.hidden_size , self.n_latent, bias=bias)
            self.W_reduceCells = nn.Linear(self.hidden_size , self.n_latent, bias=bias)
    def forward(self, input_seq, decoder_hidden, encoder_outputs = None):
        
        if self.expand == True :
            (states, cells) = decoder_hidden
            states = self.W_expandStates(states)
            cells = self.W_expandCells(cells)
            decoder_hidden = (states, cells)

        decoder_output, decoder_hidden = self.lstm(input_seq, decoder_hidden)
        # (seq_len=1, batch_size, hidden_size) => (batch_size, seq_len=1, hidden_size)
        #decoder_output = decoder_output.transpose(0,1)
        
        
        if self.attention:
            # attention_scores: (batch_size, seq_len=1, max_src_len)
            #attention_scores = torch.bmm(decoder_output, self.W_a(encoder_outputs).transpose(0,1).transpose(1,2))
            attention_scores = torch.bmm(decoder_output, self.W_a(encoder_outputs).transpose(1,2))

            # attention_mask: (batch_size, seq_len=1, max_src_len)
            #attention_mask = sequence_mask(self.args).unsqueeze(1)

            # Fills elements of tensor with `-float('inf')` where `mask` is 1.
            #attention_scores.data.masked_fill_(1 - attention_mask.data, -float('inf'))

            # attention_weights: (batch_size, seq_len=1, max_src_len) => (batch_size, max_src_len) for `F.softmax` 
            # => (batch_size, seq_len=1, max_src_len)
            try: # torch 0.3.x
                attention_weights = F.softmax(attention_scores.squeeze(1), dim=1).unsqueeze(1)
            except:
                attention_weights = F.softmax(attention_scores.squeeze(1)).unsqueeze(1)

            # context_vector:
            # (batch_size, seq_len=1, max_src_len) * (batch_size, max_src_len, encoder_hidden_size * num_directions)
            # => (batch_size, seq_len=1, encoder_hidden_size * num_directions)
            #context_vector = torch.bmm(attention_weights, encoder_outputs.transpose(0,1))
            context_vector = torch.bmm(attention_weights, encoder_outputs)

            # concat_input: (batch_size, seq_len=1, encoder_hidden_size * num_directions + decoder_hidden_size)
            concat_input = torch.cat([context_vector, decoder_output], -1)

            # (batch_size, seq_len=1, encoder_hidden_size * num_directions + decoder_hidden_size) => (batch_size, seq_len=1, decoder_hidden_size)
            concat_output = F.tanh(self.W_c(concat_input))
            
            # Prepare returns:
            # (batch_size, seq_len=1, max_src_len) => (batch_size, max_src_len)
            attention_weights = attention_weights.squeeze(1)
        else:
            attention_weights = None
            concat_output = decoder_output

        if self.expand == True :
            (states, cells) = decoder_hidden
            states = self.W_reduceStates(states)
            cells = self.W_reduceCells(cells)
            decoder_hidden = (states, cells)        
        
        
        concat_output = concat_output.transpose(0,1)    
        output = self.W_s(concat_output)
        #output = nn.Softmax(dim=2)(output)
        #decoder_hidden = self.W_reduce(decoder_hidden)
        
        return output, decoder_hidden
'''    
def sequence_mask(args):
    """
    Caution: Input and Return are VARIABLE.
    """
    max_len = args.lenSeq
    batch_size = args.batch_size
    seq_range = torch.arange(0, max_len).long()
    seq_range_expand = seq_range.unsqueeze(0).expand(batch_size, max_len)
    seq_range_expand = Variable(seq_range_expand)
    #if sequence_length.is_cuda:
        #seq_range_expand = seq_range_expand.cuda()
    seq_range_expand = seq_range_expand.to(args.device)
    seq_length_expand = (sequence_length.unsqueeze(1)
                         .expand_as(seq_range_expand))
    mask = seq_range_expand < seq_length_expand
    
    return mask
'''
class Seq2Seq(nn.Module):
        
    def __init__(self, encoder, decoder, args, encoder_optimizer, decoder_optimizer, discriminator = None, discriminator_optimizer = None, modelList = []):
        super(Seq2Seq, self).__init__()
        self.encoder = encoder
        self.decoder = decoder
        self.lenSeq = args.lenSeq
        self.lenPred = args.lenPred
        self.decim = args.decimList[0]
        self.decimList = args.decimList
        self.encoder_optimizer = encoder_optimizer
        self.decoder_optimizer = decoder_optimizer
        self.discriminator = discriminator
        self.discriminator_optimizer = discriminator_optimizer
        self.modelList = modelList
        self.args = args
        
    def forward(self, x):
        y = self.encoder(x)
        y = self.decoder(y)
        return y
        
    def train_batch(self, input_variable, target_variable, criterion, criterionDicrim, teacher_forcing_ratio, args, test = False, profForc = False, professor_forcing_ratio = 0):
    
        loss = 0
        lossD = 0
        # Store all decoder's outputs.
        batch_size = self.args.batch_size
        decoder_outputs = Variable(torch.zeros(int(self.lenPred/self.decim), int(self.lenSeq/self.decim), batch_size, self.decoder.vocab_size)).to(self.args.device)
        encoder_outputs = Variable(torch.zeros(batch_size, int(self.lenSeq/self.decim), args.hidden)).to(self.args.device)
        #encoder_hidden = Variable(torch.zeros(2,2, args.batch_size, args.hidden)).to(self.args.device)
        #decoder_output = Variable(torch.zeros(batch_size, 1, self.decoder.vocab_size)).to(self.args.device)
        encoder_hidden = False
        decoder_output = Variable(torch.zeros(batch_size, 1, self.decoder.vocab_size)).to(self.args.device)
        decoder_output[:,0,self.decoder.vocab_size-1] = 1

        padd3D = torch.nn.ConstantPad3d((0, 2, 0, 0, 0, 0),0)
        new_target = padd3D(target_variable)
        # -------------------------------------
        # Training mode (enable dropout)
        # -------------------------------------
        self.encoder.train()
        self.decoder.train()
        
        if test == True :
            self.encoder.eval()
            self.decoder.eval()
            teacher_forcing_ratio = 0
        # -------------------------------------
        # Zero gradients, since optimizers will accumulate gradients for every backward.
        # -------------------------------------    
        self.encoder_optimizer.zero_grad()
        self.decoder_optimizer.zero_grad()
        #input_variable = input_variable.transpose(0,1)
        #print(input_variable.size())
        if profForc == True :
            self.discriminator_optimizer.zero_grad()
        
        
        
        # Get all the encoder outputs in econder_hidden in the case of modelFamily
        if len(self.modelList) != 0:
            input_variable[0] = input_variable[0].to(self.args.device,non_blocking=True)
            encoder_outputs, encoder_hidden = self.encoder(input_variable[0])
            (hiddens, cells) = encoder_hidden
            for i in range(len(self.modelList)):
                input_variable[i] = input_variable[i].to(self.args.device,non_blocking=True)
                _ , (new_hidden, new_cells) = self.modelList[i].encoder(input_variable[i])
                hiddens = torch.cat((hiddens, new_hidden),2)
                cells = torch.cat((cells, new_cells),2)
            encoder_hidden = (hiddens, cells)
            target_variable = target_variable[0].to(self.args.device,non_blocking=True)
        
        else:
            for i in range(self.lenSeq+2):
                if i == 0:
                    inputVar = Variable(torch.zeros(batch_size, 1, self.decoder.vocab_size)).to(self.args.device)
                    inputVar[:,0,self.decoder.vocab_size-1] = 1
                elif i == self.lenSeq+1:
                    inputVar = Variable(torch.zeros(batch_size, 1, self.decoder.vocab_size)).to(self.args.device)
                    inputVar[:,0,self.decoder.vocab_size-2] = 1
                else:
                    inputVar = Variable(torch.zeros(batch_size, 1, self.decoder.vocab_size)).to(self.args.device)
                    #print(inputVar.size())
                    inputVar = padd3D(input_variable[:,i-1,:].view(batch_size,1,self.encoder.input_size-2))
                    #inputVar[:,0,0:self.decoder.vocab_size] = input_variable[:,i-1,:].view(batch_size,1,self.encoder.input_size-2)
                encoder_output, encoder_hidden = self.encoder(inputVar, encoder_hidden)
                if i != 0 or i != 1:
                    encoder_outputs[:,i-2,:] = encoder_output[:,0,:]
        # -------------------------------------
        # Forward decoder
        # -------------------------------------
        # Initialize decoder's hidden state as encoder's last hidden state.
        decoder_hidden = encoder_hidden
        #print(encoder_hidden[0].size())
        
        # Eval if batch with teacher forcing
        teachForcBatch = (random.random() < teacher_forcing_ratio)
        
        # Professor forcing 
        profForcBatch = (random.random() < professor_forcing_ratio)
        
        # Run through decoder one time step at a time.
        for t in range(int(self.lenPred/self.decim)):
            if self.args.attention == True:
                decoder_output, decoder_hidden = self.decoder(decoder_output, decoder_hidden, encoder_outputs) #avec attention
            else:
                decoder_output, decoder_hidden = self.decoder(decoder_output, decoder_hidden) #sans attention
            # decoder_hidden =(h_states, c_states); h_states = hidden states, c_states: cell states; see http://colah.github.io/posts/2015-08-Understanding-LSTMs/
            # Store decoder outputs.
            decoder_outputs[t] = decoder_output
            if profForcBatch != True:
                topv, topi = new_target[:,t,:].topk(1)
                #print(decoder_output.size())
                loss += criterion(decoder_output[0,:,:].view(batch_size,self.decoder.vocab_size), topi.view(batch_size))
            else:
                d_decision = self.discriminator(decoder_hidden[0])
                loss += criterionDicrim(d_decision.view(batch_size,2), Variable(torch.ones(batch_size)).to(args.device,non_blocking=True).long())

            if teachForcBatch :
                decoder_output = new_target[:,t,:].view(batch_size,1,self.decoder.vocab_size)
                if profForc == True :
                    d_real_decision = self.discriminator(Variable(decoder_hidden[0]))
                    lossD += criterionDicrim(d_real_decision.view(batch_size,2), Variable(torch.ones(batch_size)).to(args.device,non_blocking=True).long())  
            else:
                decoder_output = decoder_output.transpose(0,1)
                #print(decoder_output.size())
                topv, topi = decoder_output.topk(1)
                #print(topi.size())
                topi = nn.functional.one_hot(topi,self.decoder.vocab_size)
                #print(topi.size())
                decoder_output = topi.view(batch_size,1,self.decoder.vocab_size)
                decoder_output = decoder_output.float()
                if profForc == True :
                    d_real_decision = self.discriminator(Variable(decoder_hidden[0]))
                    lossD += criterionDicrim(d_real_decision.view(batch_size,2), Variable(torch.zeros(batch_size)).to(args.device,non_blocking=True).long())
                          
        if test != True:
            loss.backward()
            # Update parameters with optimizers
            self.encoder_optimizer.step()
            self.decoder_optimizer.step()
            if profForcBatch == True:
                lossD.backward()
                self.discriminator_optimizer.step()
        
        #print(loss)
        return decoder_outputs, loss, lossD
    
    def train_epoch(self, training_generator, criterion, criterionDicrim, accDiscr, bornInf, bornSup, epoch, args):
        train_total_loss = 0
        train_total_lossD = 0
        for local_batch, local_labels, local_key, local_beat in training_generator:
            if len(args.decimList) == 1:
                local_batch = local_batch[:,bornInf[args.decimList[0]]:bornSup[args.decimList[0]],:].contiguous()
            local_labels = local_labels[:,bornInf[args.decimList[0]]:bornSup[args.decimList[0]],:].contiguous() 
            local_batch, local_labels = local_batch.to(args.device,non_blocking=True), local_labels.to(args.device,non_blocking=True)
            #local_batch = local_batch.view(len(local_batch),1,8,25)
            local_beat = local_beat.to(args.device,non_blocking=True)
            local_key = local_key.to(args.device,non_blocking=True)
 
            if accDiscr > 0.75 and accDiscr < 0.99 and epoch > 20:
                #profRatio = args.professor_forcing_ratio
                profRatio = 0.5
            else:
                profRatio = 0

            if local_batch.size(0) == args.batch_size:
                decoder_output, loss, lossD = self.train_batch(local_batch, local_labels, criterion, criterionDicrim, args.teacher_forcing_ratio, args, profForc = args.professor_forcing, professor_forcing_ratio = profRatio)
                train_total_loss += loss
                train_total_loss += lossD
        return train_total_loss, train_total_lossD
                
    def test(self, input_variable):

        d_real_decision = 0
    
        # Store all decoder's outputs.
        #batch_size = self.args.batch_size
        batch_size = len(input_variable)
        encoder_outputs = Variable(torch.zeros(batch_size, int(self.lenSeq/self.decim), self.args.hidden)).to(self.args.device)
        decoder_outputs = Variable(torch.zeros(int(self.lenPred/self.decim), int(self.lenSeq/self.decim), batch_size, self.decoder.vocab_size)).to(self.args.device)
        decoder_output = Variable(torch.zeros(batch_size, 1, self.decoder.vocab_size)).to(self.args.device)
        decoder_output[:,0,self.decoder.vocab_size-1] = 1
        encoder_hidden = False
        #discrimAccs =  Variable(torch.zeros(int(self.lenPred/self.decim), int(self.lenSeq/self.decim), batch_size, self.decoder.vocab_size)).to(self.args.device)
        # -------------------------------------
        # Testing mode (desable dropout)
        # -------------------------------------
        self.encoder.eval()
        self.decoder.eval()

        # -------------------------------------
        # Zero gradients, since optimizers will accumulate gradients for every backward.
        # -------------------------------------    
        #self.encoder_optimizer.zero_grad()
        #self.decoder_optimizer.zero_grad()
        
        
        
        # Get all the encoder outputs in econder_hidden in the case of modelFamily
        if len(self.modelList) != 0:
            input_variable[0] = input_variable[0].to(self.args.device,non_blocking=True)
            encoder_outputs, encoder_hidden = self.encoder(input_variable[0])
            (hiddens, cells) = encoder_hidden
            for i in range(len(self.modelList)):
                input_variable[i] = input_variable[i].to(self.args.device,non_blocking=True)
                _ , (new_hidden, new_cells) = self.modelList[i].encoder(input_variable[i])
                hiddens = torch.cat((hiddens, new_hidden),2)
                cells = torch.cat((cells, new_cells),2)
            encoder_hidden = (hiddens, cells)
        
        else:
            for i in range(self.lenSeq+2):
                if i == 0:
                    inputVar = Variable(torch.zeros(batch_size, 1, self.decoder.vocab_size)).to(self.args.device)
                    inputVar[:,0,self.decoder.vocab_size-1] = 1
                elif i == self.lenSeq+1:
                    inputVar = Variable(torch.zeros(batch_size, 1, self.decoder.vocab_size)).to(self.args.device)
                    inputVar[:,0,self.decoder.vocab_size-2] = 1
                else:
                    inputVar = Variable(torch.zeros(batch_size, 1, self.decoder.vocab_size)).to(self.args.device)
                    padd3D = torch.nn.ConstantPad3d((0, 2, 0, 0, 0, 0),0)
                    #print(inputVar.size())
                    inputVar = padd3D(input_variable[:,i-1,:].view(batch_size,1,self.encoder.input_size-2))
                    #inputVar[:,0,0:self.decoder.vocab_size] = input_variable[:,i-1,:].view(batch_size,1,self.encoder.input_size-2)
                encoder_output, encoder_hidden = self.encoder(inputVar, encoder_hidden)
                if i != 0 or i != 1:
                    encoder_outputs[:,i-2,:] = encoder_output[:,0,:]
            #encoder_outputs, encoder_hidden = self.encoder(input_variable)
        # -------------------------------------
        # Forward decoder
        # -------------------------------------
        # Initialize decoder's hidden state as encoder's last hidden state.
        decoder_hidden = encoder_hidden
        
        # Run through decoder one time step at a time.
        for t in range(int(self.lenPred/self.decim)):
            if self.args.attention == True:
                decoder_output, decoder_hidden = self.decoder(decoder_output, decoder_hidden, encoder_outputs) #avec attention
            else:
                decoder_output, decoder_hidden = self.decoder(decoder_output, decoder_hidden) #sans attention
            if self.args.professor_forcing == True:
                d_real_decision += self.discriminator(Variable(decoder_hidden[0]))[:,0]
            # Store decoder outputs.
            decoder_outputs[t] = decoder_output

            decoder_output = decoder_output.transpose(0,1)
        if self.args.professor_forcing == True:
            discrimAcc = d_real_decision.sum()/(self.lenPred*batch_size/self.decim)
        else:
            discrimAcc = 0
        return decoder_outputs, discrimAcc       
    
    def genseq(self, input_variable, listChord):
        output = self.test(input_variable)
        result = []
        for i in range(output.size()[0]):
            for j in range(int(self.args.lenPred/self.decim)):
                result.append(listChord(output[i][j].max(0)[1]))
        return result
    
#%%
class Discriminator(nn.Module):
    def __init__(self, n_layersDecod, hidden_size, output_size = 2):
        super(Discriminator, self).__init__()
        self.map1 = nn.Linear(n_layersDecod * hidden_size, hidden_size)
        self.map2 = nn.Linear(hidden_size, hidden_size)
        self.map3 = nn.Linear(hidden_size, output_size)
        self.n_layersDecod = n_layersDecod
        self.hidden_size = hidden_size

    def forward(self, x):
        x = x.view(-1, self.n_layersDecod * self.hidden_size)
        x = F.relu(self.map1(x))
        x = F.relu(self.map2(x))
        return  nn.Softmax()(self.map3(x))
