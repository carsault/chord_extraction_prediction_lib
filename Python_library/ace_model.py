#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Feb 16 14:31:15 2021

@author: carsault
"""

import pickle
import utilities.distance as distances
from utilities.training import wrap_loss_function
from utilities import Chords2Vec_fun
from utilities import utils
from utilities import chordUtil
from utilities.chordUtil import *

from utilities import ACEmodels
import torch
import os

from keras.models import load_model
import numpy as np
from keras import backend as K
import pumppExtra as pumpp


def invert_dict(d):
    """
    utils function for dictionary inversion"
    """
    return dict([(v, k) for k, v in d.items()])

def load_ace_model_keras(alpha, direct = "" ,loss = "tonnetz", seed = ""):
    """
    Load model with the associated alphabets
    Model has to be in the folder ...
    """
    modelName = direct.rstrip(".hdf5")
    dictChord = {}
    with open(modelName + '_history.p', 'rb') as pickle_file:
        history = pickle.load(pickle_file)
    with open(modelName + '_listChord.p', 'rb') as pickle_file:
        list_chord_ace = pickle.load(pickle_file)
    with open(modelName + '_idx_test.p', 'rb') as pickle_file:
        #idx_test = pd.read_pickle(pickle_file)
        idx_test = "bugAvecPickle"
    for i in range(len(list_chord_ace)):
        dictChord[list_chord_ace[i]] = i
        
    if loss == 'categorical_crossentropy' or loss == 'hinge':
        ace_model = load_model(modelName + '.hdf5')
    elif loss == 'tonnetz':
        tf_mappingR = distances.tonnetz_matrix((invert_dict(dictChord),invert_dict(dictChord)))
        tf_mappingR = (tf_mappingR + np.mean(tf_mappingR))
        tf_mappingR = 1./ tf_mappingR
        tf_mappingR = (tf_mappingR) / np.max(tf_mappingR)
        tf_mapping = K.constant(tf_mappingR)
        loss=wrap_loss_function(tf_mapping = tf_mapping)
        ace_model = load_model(modelName + '.hdf5', custom_objects={'loss_function': loss})
    elif loss == 'euclidian':
        tf_mappingR = distances.euclid_matrix((invert_dict(dictChord),invert_dict(dictChord)))
        tf_mappingR = (tf_mappingR + np.mean(tf_mappingR))
        tf_mappingR = 1./ tf_mappingR
        tf_mappingR = (tf_mappingR) / np.max(tf_mappingR)
        tf_mapping = K.constant(tf_mappingR)
        loss=wrap_loss_function(tf_mapping = tf_mapping) 
        ace_model = load_model(modelName + '.hdf5', custom_objects={'loss_function': loss})
    elif loss == 'categorical_hinge':
        tf_mappingR = np.identity(len(list_chord_ace))
        tf_mapping = K.constant(tf_mappingR)
        loss=wrap_loss_function(tf_mapping = tf_mapping)
        ace_model = load_model(modelName + '.hdf5', custom_objects={'loss_function': loss})
    #ace_model._make_predict_function() bug with new tensorflow version ?
    return ace_model, history, list_chord_ace, idx_test


def load_ace_model_pytorch(alpha, direct = "" ,loss = "tonnetz", seed = ""):
    dictChord, listChord = chordUtil.getDictChord(eval(alpha))
    net = ACEmodels.ConvNet(None,len(listChord))
    #net.load_state_dict(torch.load(args.foldName + '/' + args.modelName + '/' + args.modelName, map_location = args.device))
    device = torch.device('cpu')
    net.to(device)
    net.load_state_dict(torch.load(direct, map_location = device))
    # Print model 
    #if args.device is not "cpu":
    #    net.to(args.device)
    print(net)
    def count_parameters(model):
        return sum(p.numel() for p in model.parameters() if p.requires_grad)
    print(count_parameters(net))
    return net, listChord   
#%%
def track_to_cqt(track, sr = 44100):
    """
    Transform a track to cqt vector
    """
    hop_length = 4096
    p_feature = pumpp.feature.CQTMag(name='cqt', sr=sr, hop_length=hop_length, log=True, conv='tf', n_octaves=6)
    pump = pumpp.Pump(p_feature)
    data = pump.transform(track, sr=sr)
    return data
    
def get_chords_keras(ace_model, list_chord_ace, data, start_ms, end_ms, sr = 44100):
    """
    Get the associated chord of a cqt vector interval with an ace model
    """
    hop_length = 4096
    y = []
    data_cut = []
    #select the interval
    data_cut = data['cqt/mag'][0][round((start_ms*sr/1000)/hop_length):round((end_ms*sr/1000)/hop_length)] 
    #taking the mean over the interval
    data = np.mean(data_cut, axis = 0)
    data = data.reshape(216,1)
    for i in range(15):
        y.append(data)
    y = np.asarray(y).reshape(1,15,216,1)
    localpred = ace_model.predict(y)
    return localpred, list_chord_ace[np.argmax(localpred[0])], np.argmax(localpred[0]), round(np.max(localpred[0]),6)

def get_chords_pytorch(ace_model, list_chord_ace, spec, start_ms, end_ms, sr = 44100):
    """
    Get the associated chord of a cqt vector interval with an ace model
    """
    hop_length = 512*4
    y = []
    data_cut = []
    #select the interval
    data_cut = spec[round((start_ms*sr/1000)/hop_length):round((end_ms*sr/1000)/hop_length)] 
    #taking the mean over the interval
    data = np.mean(data_cut, axis = 0)
    #data = data.reshape(105)
    for i in range(15):
        y.append(data)
    y = np.asarray(y)
    y = np.transpose(y)
    y = y.reshape(1,1,105,15)
    y_tens = torch.from_numpy(y)
    ace_model.eval()
    localpred = ace_model(y_tens).detach().numpy()
    return localpred[0], list_chord_ace[np.argmax(localpred[0])], np.argmax(localpred[0]), round(np.max(localpred[0]),6)

#%%
def multiscale_chords(ace_model, list_chord_ace, data, indice_reduc = 10, sr = 44100):
    """
    Get the associated chord of a cqt vector interval with an ace model
    """
    data_cut = []
    total_len = len(data['cqt/mag'][0])
    vect_prob = []
    number_of_dec = 0
    yop = total_len
    for i in range(round(total_len/(2*indice_reduc))):
        if yop/2 > 1:
            number_of_dec += 1 
            yop /= 2
    #number_of_dec = round(np.sqrt(total_len))
    number_of_dec = round(total_len/(2*indice_reduc))
    print(number_of_dec)
    for i in range(number_of_dec):
        #i = 2 ** i
        print("decimation : " + str(i))
        #vect_prob_dec = []
        y_dec = []
        for j in range(total_len):
            #print("step : " + str(j))
            start_win = 0 if j - i < 0 else j - i
            end_win = total_len if j + i > total_len else j + i
            data_cut = data['cqt/mag'][0][int(start_win):int(end_win+1)]
            #taking the mean over the interval
            data_bis = np.mean(data_cut, axis = 0)
            data_bis = data_bis.reshape(216,1)
            y = []
            for u in range(15):
                y.append(data_bis)
            y = np.asarray(y).reshape(1,15,216,1)
            y_dec.append(y)
            #localpred = ace_model.predict(y)
            #max_pred = np.argmax(localpred[0])
            #vect_prob_dec.append(max_pred)
        y_dec = np.asarray(y_dec).reshape(total_len,15,216,1)
        localpred = ace_model.predict(y_dec)
        max_prob = np.argmax(localpred,1)
        vect_prob.append(max_prob)
    return vect_prob

def get_cqt_from_txt(name_track_cqt):
    spec_cqt = []
    i=0
    with open(name_track_cqt) as fp:
        line = fp.readline()
        while line:
            i+=1
            spec_cqt.append(line)
            line = fp.readline()
    #os.remove(name_track_cqt)
    spec_cqt.pop()#check if the first cqt line is always 0
    spec_cqt = [x.split(' ') for x in spec_cqt]
    return spec_cqt

#%% test zone
'''
alpha = "a0"
ace_model, history, list_chord_ace, idx_test = load_ace_model_keras(alpha)
#%%
track = "05 - Killer Pete.wav"
start_ms = 108901
end_ms = 109342
data = track_to_cqt(track, sr = 44100)
u = get_chords(ace_model, list_chord_ace, data, start_ms, end_ms)
#%%
v = multiscale_chords(ace_model, list_chord_ace, data)

#%%
import numpy as np
import matplotlib.pyplot as plt

#fig, ax = plt.subplots()
#plt.imshow(v, cmap="YlGnBu", aspect = 'auto')
plt.imshow(v, cmap="prism", aspect = 'auto')
#ax.grid()
'''
    