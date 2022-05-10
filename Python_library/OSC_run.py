#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Mar 17 13:53:06 2021

@author: carsault
"""
#%% torch
import torch
import torch.nn.functional as F

#%%
import numpy as np
from ace_model import *
from utilities import OSC
from pred_model import *
import threading
import os
from librosa.core import cqt,load,note_to_hz

# If extra argument use parser
parser = argparse.ArgumentParser(description='ACE server')
# General
parser.add_argument('--server_address',   type=str,   default='127.0.0.1',    help='address of the server')
parser.add_argument('--send_port',   type=int,   default=9008,    help='send port of the server')
parser.add_argument('--receive_port',   type=int,   default=9009,    help='send port of the server')
args = parser.parse_args()
print(args)

# TOREMOVE
#import essentia
#import essentia.standard
#from essentia.standard import *
# TOREMOVE


path = os.getcwd()

print(path)

direct = "../../Python_library/"


# init global variable
ace_model = None
ace_framework = None
list_chord_ace = None
n_fft = None
essensia_cqt = None
modelGen = None
list_pred = []
beta = 0


# Start OSCServer
#receive_address = '127.0.0.1', 9001
receive_address = args.server_address, int(args.receive_port)

print("Starting OSC Server")
# OSC Server. There are three different types of server. 
s = OSC.ThreadingOSCServer(receive_address)
# this registers a ‘default’ handler (for unmatched messages)
s.addDefaultHandlers()

c = OSC.OSCClient()
#c.connect(('127.0.0.1', 9002))   # connect to Max for Live App
c.connect((args.server_address, int(args.send_port)))   # connect to Max
oscmsg = OSC.OSCMessage()
oscmsg.setAddress("/chord_mem")
oscmsggenSeq = OSC.OSCMessage()
oscmsggenVec = OSC.OSCMessage()
oscmsggenSeq.setAddress("/gen_seq")
oscmsggenVec.setAddress("/gen_vec")
oscmsggen = OSC.OSCMessage()
oscmsggen.setAddress("/gen")

# define a message-handler function for the server to call.
def printing_handler(addr, tags, stuff, source):
#Fonction to be executed for each input message
    if addr=='/define_ace_model':
        global ace_model
        global ace_framework
        global list_chord_ace
        global n_fft
        global essensia_cqt
        name_model = stuff[0].lstrip("Macintosh HD:")
        print(name_model)
        if (name_model.find('a0') != -1):
            alpha = "a0"
            print("Work on a0 chord alphabet!")
        elif (name_model.find('a2') != -1):
            alpha = "a2"
            print("Work on a2 chord alphabet!")
        elif (name_model.find('a5') != -1):
            alpha = "a5"
            print("Work on a5 chord alphabet!")
        else:
            print("No chord alphabet found in model's name!")
        # load the model either in keras or pytorch
        if (name_model.find('.hdf5') != -1):
            ace_model, history, list_chord_ace, idx_test = load_ace_model_keras(alpha, name_model)
            ace_framework = "keras"
        else:
            # find a way to differenciate keras and pytorch ?
            ace_model, list_chord_ace = load_ace_model_pytorch(alpha, name_model)
            ace_framework = "pytorch"
            # TOREMOVEfmin = 130
            # TOREMOVEessensia_cqt = ConstantQ(binsPerOctave = 24, numberBins = 105, minFrequency = fmin, scale=1, threshold=0.01, zeroPhase = False)
            n_fft = int(65536/4)
        #else:
        #    print("ace_framework not known")
        #print(ace_model)


    if addr=='/define_pred_model':
        # loading generation model
        global modelGen
        name_model = stuff[0].lstrip("Macintosh HD:")
        print(name_model)
        if (name_model.find('a0') != -1):
            alpha = "a0"
            print("Work on a0 chord alphabet!")
        elif (name_model.find('a2') != -1):
            alpha = "a2"
            print("Work on a2 chord alphabet!")
        elif (name_model.find('a5') != -1):
            alpha = "a5"
            print("Work on a5 chord alphabet!")
        else:
            print("No chord alphabet found in model's name!")
        modelGen = init_gen_model(name_model, alpha)
        global dictChord
        global listChord
        dictChord, listChord = chordUtil.getDictChord(eval(alpha))
        print(modelGen)

            
    if addr=='/python_ace_memory':
        #for index in stuff:
        #    #print(index)
        #    vector[index]=1
        list_chords = []
        spec = []
        segmentation = []
        # load track
        name_track = stuff[0].lstrip("Macintosh HD:")
        name_track = name_track.encode("latin-1")
        name_track = name_track.decode('utf-8')

        print(name_track)
        # read segmentation info
        if stuff[1] != 'mubu':
            name_seg = stuff[1].lstrip("Macintosh HD:")
        else:
            name_seg = name_track + '.txt'
        with open(name_seg) as fp:
            #segmentation = fp.readlines() #be carefull for the delay for Max to write the "name_seg" file
            line = fp.readline()
            while line:
                segmentation.append(line)
                line = fp.readline()
            if stuff[1] == 'mubu':
                os.remove(name_seg)
        #segmentation = [x.strip() for x in segmentation]
        segmentation = [x.split(' ') for x in segmentation]
        # get chord for each section
        if ace_framework == "keras":
            data = track_to_cqt(name_track, sr = 44100)
            for i in range(len(segmentation)-1):
                start_ms = float(segmentation[i][0])
                end_ms = float(segmentation[i+1][0])
                loc_pred_vect, loc_pred_lab, loc_pred_id, max_prob = get_chords_keras(ace_model, list_chord_ace, data, start_ms, end_ms, sr = 44100)
                #print(segmentation[i][0] + " "  + segmentation[i+1][0] + " " + str(loc_pred_id) +  " " + str(loc_pred_lab) + "\n")
                list_chords.append(segmentation[i][0] + " "  + segmentation[i+1][0] + " " + str(loc_pred_id) +  " " + str(loc_pred_lab) + "\n")
        elif ace_framework == "pytorch":
                # TOREMOVEsr = 44100 
                # TOREMOVEwav,sr = load(name_track,sr=sr)
                # TOREMOVEfor frame in FrameGenerator(wav, frameSize=n_fft, hopSize=512*4, startFromZero=False, lastFrameToEndOfFile = False):
                # TOREMOVE    Cstq = essensia_cqt(frame)
                # TOREMOVE    Cstq = np.abs(Cstq)
                # TOREMOVE    Cstq /= np.sqrt(n_fft).astype(np.float32)
                # TOREMOVE    spec.append(Cstq)
                spec = get_cqt_from_txt(name_track + '_cqt.txt')
                os.remove(name_track + '_cqt.txt')
                spec = np.asarray(spec, dtype=np.float32)
                spec = np.abs(spec)
                spec /= np.sqrt(n_fft).astype(np.float32)
                for i in range(len(segmentation)-1):
                    start_ms = float(segmentation[i][0])
                    end_ms = float(segmentation[i+1][0])
                    loc_pred_vect, loc_pred_lab, loc_pred_id, max_prob = get_chords_pytorch(ace_model, list_chord_ace, spec, start_ms, end_ms, sr = 44100)
                    #list_chords.append(segmentation[i][0] + " "  + segmentation[i+1][0] + " " + str(loc_pred_id) +  " " + str(loc_pred_lab) + "\n") with the chords column
                    #list_chords.append(segmentation[i][0] + " "  + str((float(segmentation[i+1][0])-float(segmentation[i][0]))) + " " + "1" +  " " + str(loc_pred_id) + "\n") #for DYCI2
                    list_chords.append(segmentation[i][0] + " "  + str((float(segmentation[i+1][0])-float(segmentation[i][0]))) + " " + "1" +  " " + str(loc_pred_id) +  " " + str(loc_pred_lab) + "\n") #for DYCI2 with chord label
        # save chord label information

        
        file_ace = open(name_track + "_ace_label.txt","w+")
        file_ace.writelines(list_chords)
        #check why osc doesn't support utf-8 encoding
        #name_track = name_track.encode('utf-8') 
        #name_track = name_track.decode("latin-1")
        # send end of analysis signal through OSC to Max
        oscmsg.append("read \"" + name_track + "_ace_label.txt\" @name chords") #with the chords column
        #oscmsg.append("read \"" + name_track + "_ace_label.txt\" @name seg") #for DYCI2
        print(oscmsg)
        c.send(oscmsg)
        oscmsg.clearData()

    if addr=='/gen':
        seed = []
        print("gen")
        for index in stuff:
            #print(index)
            seed.append(index)
        print(dictChord)
        local_seqPred, vecProb = getSeq(modelGen, seed, dictChord, listChord)
        # send end of analysis signal through OSC to Max
        oscmsggenSeq.append(local_seqPred)
        oscmsggenVec.append(vecProb)
        print(local_seqPred)
        c.send(oscmsggenSeq)
        c.send(oscmsggenVec)
        oscmsggenSeq.clearData()
        oscmsggenVec.clearData()

    if addr=='/gen_memory':
        seed = []
        global beta
        global list_pred
        for index in stuff:
            #print(index)
            seed.append(index)
        #print(dictChord)
        local_seqPred, vecProb = getSeq(modelGen, seed, dictChord, listChord)
        # send end of analysis signal through OSC to Max
        #oscmsggen.append(vecProb)
        list_pred.append(vecProb)
        if len(list_pred) > 8:
            list_pred.pop(0)
        seqPred, prob = getSeq_multi(list_pred, beta)
        oscmsggenSeq.append(seqPred)
        oscmsggenVec.append(prob)
        c.send(oscmsggenSeq)
        c.send(oscmsggenVec)
        oscmsggenSeq.clearData()
        oscmsggenVec.clearData()

    if addr=='/weight_param':
        seed = []
        print("weight param")
        for index in stuff:
            #print(index)
            beta = stuff
        beta = beta[0]
        print(beta/100)
        oscmsggen.append(beta)
        c.send(oscmsggen)
        oscmsggen.clearData()
#%%
s.addMsgHandler("/define_ace_model", printing_handler)  
s.addMsgHandler("/define_pred_model", printing_handler)         
s.addMsgHandler("/python_ace_memory", printing_handler)
s.addMsgHandler("/gen", printing_handler)
s.addMsgHandler("/gen_memory", printing_handler)
s.addMsgHandler("/weight_param", printing_handler)
st = threading.Thread(target=s.serve_forever)
st.start()
'''
#%% test
name_track = "/Users/carsault/Dropbox/work/code/git_hub/Dyci2Lib/Max_library/_Tutorials_/190428InstruRapMatt2"
data = track_to_cqt(name_track + ".wav", sr = 44100)
#%%
with open(name_track + '.txt') as f:
    segmentation = f.readlines()
segmentation = [x.strip() for x in segmentation]
segmentation = [x.split(' ') for x in segmentation]
list_chords = []
for i in range(len(segmentation)-1):
    start_ms = float(segmentation[i][0])
    end_ms = float(segmentation[i+1][0])
    loc_pred_vect, loc_pred_lab, loc_pred_id, max_prob = get_chords(ace_model, list_chord_ace, data, start_ms, end_ms, sr = 44100)
    list_chords.append(segmentation[i][0] + " "  + segmentation[i+1][0] + " " + str(loc_pred_id) + "\n")
file_ace = open(name_track + "_ace_label.txt","w+")
file_ace.writelines(list_chords)
file_ace.close()
'''