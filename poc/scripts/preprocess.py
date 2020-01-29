import os
import re
import string
import sys
import numpy as np
from os.path import join
from multiprocessing import Pool
from collections import defaultdict
import pickle
from ffmpeg_load_audio import ffmpeg_load_audio
import librosa

'''
This tool converts a folder of samples to a big rectangular matrix with one mono sample per row.

Samples should be placed in `data/mydataset/samples/`. They could be `.mp3`, `.wav`, or anything else that ffmpeg can work with. They may be all in one folder, or in nested sub-folders.

Change the path below to point to the root directory, e.g., `data/mydataset/`.

The samplerate `sr` is not necessarily the native samplerate of the samples, it's the samplerate you want to load them at.

The output of this notebook is:
* `data/mydataset/durations.txt`
* `data/mydataset/filenames.txt`
* `data/mydataset/samples.npy`
'''

from utils import DATA_DIR, CLASSNAMES, SAMPLE_DIR

#The names of the drum classes

print(DATA_DIR)
#Collect all of the sample file paths as strings
instrument_sets = defaultdict(list)
for directory in os.walk(DATA_DIR):
    dirpath, dirnames, filenames = directory
    # get the dirname from path
    dirname = os.path.split(dirpath)[1]
    # if dirpath not in CLASSNAMES: continue
    for filename in filenames:
        oldpath = dirpath + "/" + filename
        if oldpath.endswith('.wav'):
            instrument_sets[dirname].append(oldpath)

# Regex matching for extracting secondary and tertiary attributes from filenames
        
#From the drum class names, generate the regular expression used to match against sample file paths
# regex = r"\d{3}__\[(\w{3})\]\[(\w{3})\]\[(\w+)\]\d+__\d+.wav"

#filter filenames into sets by matching vs regex
# instrument_sets = {}
# for i in range(len(CLASSNAMES)):
#     instrument_sets[CLASSNAMES[i]] = {fileName for fileName in filenames if re.match(drumRegex[i], fileName)}
    
data_root = SAMPLE_DIR
sr = 48000
max_length = sr*4 # ignore samples longer than 4 seconds
fixed_length = sr/4 # trim all samples to 250 milliseconds
limit = None # set this to 100 to only load the first 100 samples

# function to extract audio data from files

# Could write to eliminate 0 valued values
def load_sample(fn, sr=None,
                max_length=None, fixed_length=None, normalize=True):
    if fn == '': # ignore empty filenames
        return None
    audio, _ = ffmpeg_load_audio(fn, sr, mono=True)
    duration = len(audio)
    if duration == 0: # ignore zero-length samples
        return None
    if max_length and duration >= max_length: # ignore long samples
        return None
    if fixed_length:
        audio.resize(fixed_length)
    max_val = np.abs(audio).max()
    if max_val == 0: # ignore completely silent sounds
        return None
    if normalize:
        audio /= max_val
    if audio.shape[0] > 1:
        audio = librosa.to_mono(audio)
    return (fn, audio, duration)

# perform extraction of audio data from files
loaded_samples = {}
for instrument in instrument_sets.keys():
    files = instrument_sets[instrument]
    def job(fn):
        return load_sample(fn, sr=sr,
                           max_length=max_length, fixed_length=fixed_length)
    pool = Pool()
    loaded_samples[instrument] = pool.map(job, files[:limit])
    print(('Processed', len(loaded_samples[instrument]), 'samples for ', instrument))

# save audio data as numpy arrays

lengths = []

for instrument in CLASSNAMES:
    valid = [_f for _f in loaded_samples[instrument] if _f]
    filenames = [x[0] for x in valid]
    samples = [x[1] for x in valid]
    durations = [x[2] for x in valid]
    samples = np.asarray(samples)
    lengths.append(len(samples))
    with open(join(data_root, instrument+'_filenames.txt'), 'w+') as f:
        np.savetxt(f, filenames, fmt='%s')
    with open(join(data_root, instrument+'_durations.txt'), 'w+') as f:
        np.savetxt(f, durations, fmt='%i')
    with open(join(data_root, instrument+'_samples.npy'), 'w+') as f:
        np.save(f, samples)
    print('Saved', len(valid), 'samples of '+instrument)

# pickle.dump(CLASSNAMES, open(data_root+"/CLASSNAMES.pickle", "w"))
# pickle.dump(lengths, open(data_root+"/lengths.pickle", "w"))

