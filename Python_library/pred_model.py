#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Feb 16 14:31:15 2021

@author: carsault
"""

'''
import pickle
import utilities.distance as distances
from utilities.training import wrap_loss_function
from utilities import Chords2Vec_fun
from utilities import utils
from keras.models import load_model
import numpy as np
from keras import backend as K
import pumppExtra as pumpp
'''
#%% torch
import torch
import torch.nn.functional as F
import torch.nn as nn

import numpy as np

from utilities import modelsGen
from utilities import chordUtil
from utilities import util
from utilities.chordVocab import *
from seq2seq import seq2seqModel
from seq2seq.seq2seqModel import *

import argparse
### ADD PARSER
#initial parameters

parser = argparse.ArgumentParser(description='Hierarchical Latent Space')
# General
parser.add_argument('--rootname',   type=str,   default='inputs/jazz_xlab/',    help='name of the data folder')
parser.add_argument('--random_state',   type=int,   default=1,    help='seed for the random train/test split')
# Model selection
parser.add_argument('--modelType',      type=str,   default='mlpDecimFamily',                            help='type of model to evaluate')
parser.add_argument('--foldName',      type=str,   default='modelSaveTest',                            help='name of the folder containing the models')
parser.add_argument('--modelName',      type=str,   default='0',                            help='name of model to evaluate')
parser.add_argument('--alpha',      type=str,   default='a5',                            help='type of alphabet')
parser.add_argument('--lenSeq',      type=int,   default= 8,                            help='length of input sequence')
parser.add_argument('--lenPred',      type=int,   default=8,                            help='length of predicted sequence')
parser.add_argument('--decimList', nargs="+",     type=int,   default=[1, 2, 4],                            help='list of decimations (default: [1])')
parser.add_argument('--dist',      type=str,   default='tonnetz',                            help='distance to compare predicted sequence')
parser.add_argument('--latent',     type=int,   default=50,                                 help='size of the latent space (default: 50)')
parser.add_argument('--hidden',     type=int,   default=500,                                 help='size of the hidden layer (default: 500)')
parser.add_argument('--layer',     type=int,   default=1,                                 help='number of the hidden layer - 2 (default: 1)')
parser.add_argument('--dropRatio',     type=float,   default=0.5,                                 help='drop Out ratio (default: 0.5)')
parser.add_argument('--lr',         type=float, default=1e-4,                               help='learning rate for Adam optimizer (default: 2e-4)')
# Latent space (VQ-VAE)
#parser.add_argument('--discrete',   type=str,   default='vq',                               help='type of latent discretization (default: vq)')
#parser.add_argument('--latent',     type=int,   default=256,                                 help='size of the latent space (default: 256)')
parser.add_argument('--k',          type=int,   default=512,                                help='number of latent vectors (default: 512)')
parser.add_argument('--rawinput',     type=util.str2bool,   default=False,                                 help='raw input')

# RNN Learning
parser.add_argument('--teacher_forcing_ratio',     type=float,   default=0.5,                                 help='between 0 and 1 (default: 0.5)')
parser.add_argument('--professor_forcing',     type=util.str2bool,   default=False,                                 help='activate professor forcing GAN training (default: False)')
parser.add_argument('--professor_forcing_ratio',     type=float,   default=0,                                 help='between 0 and 1 (default: 0.5)')
parser.add_argument('--attention',     type=util.str2bool,   default=True,                                 help='attention mechanism in LSTM decoder')
parser.add_argument('--expand',     type=util.str2bool,   default=True,                                 help='reduce the latent space in LSTM')
# Save file
parser.add_argument('--foldNameGen',      type=str,   default='modelGen/modelSave200908',                            help='name of the folder containing the models')
parser.add_argument('--modelNameGen',      type=str,   default='bqwlbq',                            help='name of model to evaluate')
parser.add_argument('--distGen',      type=str,   default='None',                            help='distance to compare predicted sequence (default : euclidian')
parser.add_argument('--device',     type=str,   default='cpu',                              help='set the device (cpu or cuda, default: cpu)')
args, unknown = parser.parse_known_args()
#args = parser.parse_args()

### ADD PARSER

args.foldNameGen = "../../Python_library/" + args.foldNameGen



dictChord, listChord = chordUtil.getDictChord(eval(args.alpha))
n_categories = len(listChord)
decim = args.decimList[0]

args.dataFolder = args.alpha + "_124_" + str(args.random_state)
str1 = ''.join(str(e) for e in args.decimList)
args.modelName = args.dataFolder + "_" + str1 + "_" + args.modelType

#%%Load gen Model
    
bornInf = {}
bornSup = {}
listNameModel = {}
#listNameModel[2] = "mlp2Decim2bis"
#listNameModel[4] = "mlpDecim4bis"
listNameModel[2] = args.dataFolder + "_2_" + "mlpDecim"
listNameModel[4] = args.dataFolder + "_4_" + "mlpDecim"

bornInf[1] = 0
bornSup[1] = 8
bornInf[2] = 8
bornSup[2] = 12
bornInf[4] = 12
bornSup[4] = 14
model_type = ""

def init_gen_model(name_model= "", alpha = ""):

    args.alpha = alpha
    global dictChord
    global listChord
    global n_categories
    global net
    global model_type
    dictChord, listChord = chordUtil.getDictChord(eval(args.alpha))
    n_categories = len(listChord)

    if (name_model.find("mlpDecimKeyBeat") != -1):
        print("mlpDecimKeyBeat")
        model_type = "mlpDecimKeyBeat"
        args.hidden = 500
        args.latent = 50
        args.layer = 1
        enc = modelsGen.EncoderMLP(args.lenSeq, n_categories, args.hidden, args.latent, decim, args.layer, args.dropRatio)
        encTensor1 = modelsGen.EncoderMLP(args.lenSeq, 4, int(args.hidden/50), int(args.latent/10), decim, args.layer, 0)
        encTensor2 = modelsGen.EncoderMLP(args.lenSeq, 25, int(args.hidden/50), int(args.latent/10), decim, args.layer, 0)
        #encTensor = modelsGen.NetConv()
        decDouble = modelsGen.DecoderMLP(args.lenPred, n_categories, args.hidden, int(args.latent + 2*args.latent/10), decim, args.layer, args.dropRatio)
        net = modelsGen.InOutModelTripleKeyBeat(enc, encTensor1, encTensor2, decDouble)

    elif (name_model.find("mlpDecimFamily") != -1):
        model_type = "mlpDecimFamily"
        args.hidden = 500
        args.latent = 50
        args.layer = 1
        args.decimList = [1,2,4]
        net = modelsGen.ModelFamily() 
        for i in args.decimList:
            enc = modelsGen.EncoderMLP(args.lenSeq, n_categories, args.hidden, args.latent, i, args.layer, args.dropRatio)
            if i != 1 :
                dec = modelsGen.DecoderMLP(args.lenPred, n_categories, args.hidden, args.latent, i, args.layer, args.dropRatio)
                model = modelsGen.InOutModel(enc,dec)
                #file_name = name_model.rstrip("124_mlpDecimFamily/" + alpha + "_124_1_124_mlpDecimFamily")
                file_name = name_model.rstrip("/" + alpha + "_124_1_124_mlpDecimFamily")
                print(file_name)
                file_name = file_name + "/" + alpha + "_124_1_124_mlpDecimFamily" + "/decim_models/" + alpha + "_124_1_" + str(i) + "_mlpDecim" + "/" + alpha + "_124_1_" + str(i) + "_mlpDecim"
                model.load_state_dict(torch.load(file_name,map_location = args.device))
                net.addModel(model, str(i))
            else:
                dec = modelsGen.DecoderFinal(args.lenSeq, args.lenPred, n_categories, args.hidden, args.latent * len(args.decimList), args.layer, args.dropRatio)
                model = modelsGen.FinalModel(enc,dec)
                net.addModel(model, str(i))

    elif (name_model.find("mlpDecimBeat") != -1):
        print("mlpDecimBeat")
        model_type = "mlpDecimBeat"
        args.hidden = 500
        args.latent = 50
        args.layer = 1
        enc = modelsGen.EncoderMLP(args.lenSeq, n_categories, args.hidden, args.latent, decim, args.layer, args.dropRatio)
        encTensor1 = modelsGen.EncoderMLP(args.lenSeq, 4, int(args.hidden/50), int(args.latent/10), decim, args.layer, 0)
        #encTensor = modelsGen.NetConv()
        decDouble = modelsGen.DecoderMLP(args.lenPred, n_categories, args.hidden, int(args.latent + args.latent/10), decim, args.layer, args.dropRatio)
        net = modelsGen.InOutModelDoubleBeat(enc, encTensor1, decDouble)

            
    elif (name_model.find("mlpDecimKey") != -1):
        print("mlpDecimKey")
        model_type = "mlpDecimKey"
        args.hidden = 500
        args.latent = 50
        args.layer = 1
        enc = modelsGen.EncoderMLP(args.lenSeq, n_categories, args.hidden, args.latent, decim, args.layer, args.dropRatio)
        encTensor2 = modelsGen.EncoderMLP(args.lenSeq, 25, int(args.hidden/50), int(args.latent/10), decim, args.layer, 0)
        #encTensor = modelsGen.NetConv()
        decDouble = modelsGen.DecoderMLP(args.lenPred, n_categories, args.hidden, int(args.latent + args.latent/10), decim, args.layer, args.dropRatio)
        net = modelsGen.InOutModelDoubleKey(enc, encTensor2, decDouble)

    elif (name_model.find("mlpDecimAug") != -1):
        print("mlpDecimAug")
        model_type = "mlpDecimAug"
        args.hidden = 500
        args.latent = 50
        args.layer = 1
        n_categoriesInput = n_categories
        enc = modelsGen.EncoderMLP(args.lenSeq, n_categoriesInput, args.hidden, args.latent, decim, args.layer, args.dropRatio)
        encBeat = modelsGen.EncoderMLP(args.lenSeq, n_categoriesInput, args.hidden, 4, decim, args.layer, args.dropRatio)
        encKey = modelsGen.EncoderMLP(args.lenSeq, n_categoriesInput, args.hidden, 25, decim, args.layer, args.dropRatio)
        #enc = modelsGen.dilatConvBatch(args.lenSeq, 1, n_categories, args.latent)
        #enc = modelsGen.ConvNet(args)
        
        if args.rawinput:
            dec = modelsGen.DecoderMLP(args.lenPred, n_categories, args.hidden, args.lenSeq*args.n_categories + 4 + 25, decim, args.layer, args.dropRatio)
            net = modelsGen.InOutModelTripleRawData(encBeat, encKey, dec, args)
        else:
            dec = modelsGen.DecoderMLP(args.lenPred, n_categories, args.hidden, args.latent + 4 + 25, decim, args.layer, args.dropRatio)
            net = modelsGen.InOutModelTriple(enc, encBeat, encKey, dec)
        args.key = True
        args.rec = False
        if args.decimList[0] != 1:
            criterion = nn.MSELoss()
        else:
            #criterion = nn.BCELoss()
            criterion = nn.CrossEntropyLoss()
            #criterionKey = nn.BCELoss()
            criterionKey = nn.CrossEntropyLoss()
            #criterionBeat = nn.BCELoss()
            criterionBeat = nn.CrossEntropyLoss()


    elif (name_model.find("mlpDecim") != -1):
        print("mlpDecim")
        model_type = "mlpDecim"
        args.hidden = 500
        args.latent = 50
        args.layer = 1
        enc = modelsGen.EncoderMLP(args.lenSeq, n_categories, args.hidden, args.latent, decim, args.layer, args.dropRatio)
        #enc = modelsGen.dilatConv(args.lenSeq, 1, n_categories, args.latent)
        dec = modelsGen.DecoderMLP(args.lenPred, n_categories, args.hidden, args.latent, decim, args.layer, args.dropRatio)
        net = modelsGen.InOutModel(enc,dec)
        criterion = nn.BCELoss()
        if args.decimList[0] != 1:
            criterion = nn.MSELoss()
        else:
            criterion = nn.BCELoss()


    elif (name_model.find("lstmDecim") != -1):
        print("lstmDecim")  
        model_type = "lstmDecim"
        args.hidden = 200
        args.latent = 50
        args.layer = 0
        #--layer 0 --latent 50 --hidden 200 
        if args.attention == True:
            enc = seq2seqModel.EncoderRNNattention(args, n_categories + 2, args.hidden, args.latent, args.layer + 1 , expand = args.expand)
            dec = seq2seqModel.DecoderRNNattention(args, n_categories + 2, args.hidden, args.latent, args.layer + 1, attention = args.attention, expand = args.expand)
        else:
            enc = seq2seqModel.EncoderRNN(args, n_categories + 2, args.hidden, args.layer + 1)
            dec = seq2seqModel.DecoderRNN(args, n_categories + 2, args.hidden, args.layer + 1)
        encoder_optimizer = torch.optim.Adam(enc.parameters(), lr=args.lr, weight_decay=1e-4)
        decoder_optimizer = torch.optim.Adam(dec.parameters(), lr=args.lr, weight_decay=1e-4)
        #encoder_optimizer = torch.optim.SGD(enc.parameters(), lr=args.lr)
        #decoder_optimizer = torch.optim.SGD(dec.parameters(), lr=args.lr)
        #schedulerEnc = torch.optim.lr_scheduler.StepLR(encoder_optimizer, step_size = 20 ,gamma = 0.1)
        enc_lr_scheduler = torch.optim.lr_scheduler.ReduceLROnPlateau(encoder_optimizer, factor=0.5, threshold=1e-6)
        #schedulerDec = torch.optim.lr_scheduler.StepLR(decoder_optimizer, step_size = 20 ,gamma = 0.1)
        dec_lr_scheduler = torch.optim.lr_scheduler.ReduceLROnPlateau(decoder_optimizer, factor=0.5, threshold=1e-6)
        net = seq2seqModel.Seq2Seq(enc, dec, args, encoder_optimizer, decoder_optimizer)
        #criterion = nn.BCELoss()
        criterion = nn.CrossEntropyLoss()
    # Print model 
    print(net)
    #f.write(print(net))
    def count_parameters(model):
        return sum(p.numel() for p in model.parameters() if p.requires_grad)
    print(count_parameters(net))
    #res['numberOfModelParams'] = count_parameters(net)

    if args.device is not "cpu":
        net.to(args.device)
    #%%    
    # Begin testing
    net.load_state_dict(torch.load(name_model, map_location = args.device))
    return net



def init_gen_model_wo_arg(lenSeq, lenPred, n_categories, hidden, latent, decim, layer, dropRatio, modelName, foldNameGen, device, expand_f, attention_f):
    if modelType == "mlpDecim":
        enc = modelsGen.EncoderMLP(lenSeq, n_categories, hidden, latent, decim, layer, dropRatio)
        #enc = modelsGen.dilatConv(lenSeq, 1, n_categories, latent)
        dec = modelsGen.DecoderMLP(lenPred, n_categories, hidden, latent, decim, layer, dropRatio)
        net = modelsGen.InOutModel(enc,dec)
        criterion = nn.BCELoss()
        if args.decimList[0] != 1:
            criterion = nn.MSELoss()
        else:
            criterion = nn.BCELoss()

    elif modelType == "mlpDecimFamily":
        net = modelsGen.ModelFamily() 
        for i in args.decimList:
            enc = modelsGen.EncoderMLP(lenSeq, n_categories, hidden, latent, i, layer - 1, dropRatio)
            if i != 1 :
                dec = modelsGen.DecoderMLP(lenPred, n_categories, hidden, latent, i, layer - 1, dropRatio)
                model = modelsGen.InOutModel(enc,dec)
                #file_name = "2019-03-11" + "mlpDecim[" + str(i) + "]seed" + str(args.random_state)
                file_name = listNameModel[i]
                model.load_state_dict(torch.load(foldNameGen + '/' + str(file_name) + '/' + str(file_name) ,map_location = device))
                net.addModel(model, str(i))
            else:
                dec = modelsGen.DecoderFinal(lenSeq, lenPred, n_categories, hidden, latent * len(args.decimList), layer - 1, dropRatio)
                model = modelsGen.FinalModel(enc,dec)
                net.addModel(model, str(i))

    elif modelType == "mlpDecimBeat":
        enc = modelsGen.EncoderMLP(lenSeq, n_categories, hidden, latent, decim, layer, dropRatio)
        encTensor1 = modelsGen.EncoderMLP(lenSeq, 4, int(hidden/50), int(latent/10), decim, layer, 0)
        #encTensor = modelsGen.NetConv()
        decDouble = modelsGen.DecoderMLP(lenPred, n_categories, hidden, int(latent + latent/10), decim, layer, dropRatio)
        net = modelsGen.InOutModelDoubleBeat(enc, encTensor1, decDouble)

            
    elif modelType == "mlpDecimKey":
        enc = modelsGen.EncoderMLP(lenSeq, n_categories, hidden, latent, decim, layer, dropRatio)
        encTensor2 = modelsGen.EncoderMLP(lenSeq, 25, int(hidden/50), int(latent/10), decim, layer, 0)
        #encTensor = modelsGen.NetConv()
        decDouble = modelsGen.DecoderMLP(lenPred, n_categories, hidden, int(latent + latent/10), decim, layer, dropRatio)
        net = modelsGen.InOutModelDoubleKey(enc, encTensor2, decDouble)


    elif modelType == "mlpDecimKeyBeat":
        enc = modelsGen.EncoderMLP(lenSeq, n_categories, hidden, latent, decim, layer, dropRatio)
        encTensor1 = modelsGen.EncoderMLP(lenSeq, 4, int(hidden/50), int(latent/10), decim, layer, 0)
        encTensor2 = modelsGen.EncoderMLP(lenSeq, 25, int(hidden/50), int(latent/10), decim, layer, 0)
        #encTensor = modelsGen.NetConv()
        decDouble = modelsGen.DecoderMLP(lenPred, n_categories, hidden, int(latent + 2*latent/10), decim, layer, dropRatio)
        net = modelsGen.InOutModelTripleKeyBeat(enc, encTensor1, encTensor2, decDouble)


    if modelType == "lstmDecim":   
        enc = seq2seqModel.EncoderRNNattention(n_categories, hidden, latent, layer + 1 , expand = expand_f)
        dec = seq2seqModel.DecoderRNNattention(args, n_categories, hidden, latent, layer + 1, attention = attention_f, expand = expand_f)
        encoder_optimizer = torch.optim.Adam(enc.parameters(), lr=lr_f)
        decoder_optimizer = torch.optim.Adam(dec.parameters(), lr=lr_f)
        net = seq2seqModel.Seq2Seq(enc, dec, args, encoder_optimizer, decoder_optimizer)
        criterion = nn.BCELoss()
        if args.professor_forcing == True:
            discriminator = seq2seqModel.Discriminator(layer + 1, hidden)
            discriminator_optimizer = torch.optim.Adam(discriminator.parameters(), lr=lr_f)
            net = seq2seqModel.Seq2Seq(enc, dec, args, encoder_optimizer, decoder_optimizer, discriminator, discriminator_optimizer)
            criterionDicrim = nn.CrossEntropyLoss()

    # Print model 
    print(net)
    #f.write(print(net))
    def count_parameters(model):
        return sum(p.numel() for p in model.parameters() if p.requires_grad)
    print(count_parameters(net))
    res['numberOfModelParams'] = count_parameters(net)

    if device is not "cpu":
        net.to(device)
    #%%    
    # Begin testing
    net.load_state_dict(torch.load(foldNameGen + '/' + modelName + '/' + modelName, map_location = device))
    return net
#%%
def getSeq(modelGen, seed, dictChord, listChord, args_f = args, bornInf_f = bornInf,  bornSup_f = bornSup):
    x = []
    global model_type
    chord_alph = ""
    if len(dictChord)==25:
        chord_alph = "a0"
    elif len(dictChord)==85:  
        chord_alph = "a2"
    elif len(dictChord)==169:
        chord_alph = "a5"
    else:
        print("not known dictionary")
    for i in seed:
        x.append(dictChord[chordUtil.reduChord(i,chord_alph)])
    x = torch.IntTensor(x).to(args_f.device)
    x = torch.nn.functional.one_hot(x.to(torch.int64), len(dictChord)).float()
    # Do the decimation
    listX = []
    if model_type == "mlpDecim" or model_type == "mlpDecimAug" or model_type == "lstmDecim":
        args.decimList = [1]
    elif model_type == "mlpDecimFamily":
        args.decimList = [1,2,4]

    for i in args.decimList:
        u = []
        decimX = torch.chunk(x, int(args.lenSeq / i))
        for j in range(len(decimX)):
            u.append(torch.sum(decimX[j], 0))
        u = torch.stack(u)
        listX.append(u)
    listX = torch.cat(listX, 0)
    
    x = listX.view(1,listX.shape[0],listX.shape[1])
    modelGen.eval() 
    modelGen.zero_grad()

    with torch.no_grad():
        if model_type == "mlpDecim":
            out = modelGen(x)
        elif model_type == "mlpDecimAug":
            out, beat, key = modelGen(x)
        elif model_type == "mlpDecimFamily":
            out = modelGen(x, args, bornInf_f, bornSup_f).data
        elif model_type == "lstmDecim":
            decoder_output, accDiscr = modelGen.test(x)
            out = decoder_output[:,0,:,:].transpose(0,1).view(1,int(args.lenPred/decim),n_categories+2)
    
    out = F.softmax(out, dim=2)
    out = out.cpu().numpy()

    #out = out.view(x.shape[0], -1, y.shape[1]).max(dim=1)[1]
    pred = []
    for i in range(len(out[0])):
        pred.append(np.argmax(out[0][i]))  
    #out = out.view(1, -1, args.lenPred).max(dim=1)[1]
    #out = out.max(dim=1)[1]
    seqPred = []
    #out = out[0].tolist()
    for i in pred:
        seqPred.append(listChord[i])
    #print(seqPred)
    return seqPred, out
#%%
def getSeq_multi(list_vect, beta):
    final_vect = []
    final_vect.append(np.array(list_vect[len(list_vect)-1].copy(),dtype=float))
    new_list_vect = np.array(list_vect.copy(),dtype=float)
    print("beta is equal to  " + str(beta/100))
    #for every step except the last prediction
    for i in range(7):
        #for every vect prob remaining
        for j in range(len(list_vect)-1):
            if j+i+1 < 8:
                contrib_prev = np.multiply((beta/100)/(j+2),list_vect[len(list_vect)-j-1][0][i+j+1])
                final_vect[0][0][i] =  np.add(np.array(contrib_prev, dtype=float),final_vect[0][0][i])
    final_vect = torch.tensor(final_vect)
    final_vect = torch.reshape(final_vect,(8,-1))
    print(final_vect.size())
    #out = F.softmax(final_vect, dim=1)
    out = final_vect
    out = out.cpu().numpy()
    #out = out.view(x.shape[0], -1, y.shape[1]).max(dim=1)[1]
    pred = []
    for i in range(len(out)):
        pred.append(np.argmax(out[i]))  
    #out = out.view(1, -1, args.lenPred).max(dim=1)[1]
    #out = out.max(dim=1)[1]
    seqPred = []
    #out = out[0].tolist()
    for i in pred:
        seqPred.append(listChord[i])
    #print(seqPred)
    return seqPred, out

    