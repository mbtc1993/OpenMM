# Michelle Morales
# Dissertation Work 2017
# OpenMM

# This script can be used to perform multimodal feature extraction using the OpenFace, Covarep, and LingAnalysis

import sys, os, subprocess, json, LingAnalysis, pandas, scipy.stats, os.path, glob
import speech_recognition as sr
import numpy as np
import zipfile
import StringIO
import csv


def extract_visual(video, openface):
    # Extracts visual features using OpenFace, requires the OpenFace () repo to be installed
    csv = video.replace('.mp4','_openface.csv')
    print 'Launching OpenFace to extract visual features... \n\n\n\n\n'
    command = '%s -f %s -of %s'%(openface, video, csv)
    subprocess.call(command, shell=True)
    print 'DONE! Visual features saved to %s' % csv


def video2audio(video):
    # Converts video to audio using ffmpeg, requires ffmpeg to be installed
    wav = video.replace('.mp4', '.wav')
    command = 'ffmpeg -i %s -acodec pcm_s16le -ac 1 -ar 16000 %s'%(video, wav)
    subprocess.call(command, shell=True)
    print 'DONE! Video converted to audio file: %s' % wav


def extract_audio(audio_dir):
    # Covarep operates on directory of files and extracts audio features using matlab app
    matlab = '/Applications/MATLAB/MATLAB_Runtime/v92/'
    command = "./covarep/run_COVAREP_feature_extraction.sh '%s' '%s'" % (matlab, audio_dir)
    print command
    subprocess.call(command, shell=True)
    print 'DONE! Audio features saved to .mat file in %s directory.' % audio_dir


def google_speech2text(audio_file, lang, google_key):
    json_name = audio_file.replace(".wav", "_transcript.json")
    r = sr.Recognizer()
    with sr.AudioFile(audio_file) as source:
        audio = r.record(source)
    # Recognize speech using Google Speech Recognition
    try:
        result = r.recognize_google(audio, key=google_key, language=lang)
        new_f = open(json_name,"w")
        json.dump(result, new_f)
        new_f.close()
        print("Audio file processed transcript saved json file!")
    except sr.UnknownValueError:
        print("Google Speech Recognition could not understand audio")
    except sr.RequestError as e:
        print("Could not request results from Google Speech Recognition service; {0}".format(e))


def ibm_speech2text(audio_file, lang, IBM_USERNAME, IBM_PASSWORD):
    transcript_name = audio_file.replace(".wav", "_transcript.txt")
    r = sr.Recognizer()

    with sr.AudioFile(audio_file) as source:
        audio = r.record(source)
    # Recognize speech using IBM Speech to Text
    try:
        result = r.recognize_ibm(audio, username=IBM_USERNAME, password=IBM_PASSWORD, language=lang)
        new_f = open(transcript_name, "w")
        new_f.write(result)
        new_f.close()
        print("Audio file processed transcript saved file!")

    except sr.UnknownValueError:
        print("IBM Speech to Text could not understand audio")
    except sr.RequestError as e:
        print("Could not request results from IBM Speech to Text service; {0}".format(e))


def early_fusion(file_name):
    print file_name
    visual_file = file_name.replace('_transcript.txt', '_openface.csv')
    audio_file = file_name.replace('_transcript.txt', '_covarep.csv')
    ling_file = file_name.replace('_transcript.txt', '_ling.csv')
    mm_file = file_name.replace('_transcript.txt', '_multimodal.csv')
    print visual_file, audio_file, ling_file, '\n\n'
    files = [visual_file, audio_file, ling_file]
    stats_names = ['max', 'min', 'mean', 'median', 'std', 'var', 'kurt', 'skew', 'percentile25', 'percentile50', 'percentile75']
    mm_feats = []
    mm_names = []
    for feat_file in files:
        df = pandas.read_csv(feat_file, header='infer')
        feature_names = df.columns.values
        for feat in feature_names:
            # Feature vector
            vals = df[feat].values
            # Run statistics
            maximum = np.nanmax(vals)
            minimum = np.nanmin(vals)
            mean = np.nanmean(vals)
            median = np.nanmedian(vals)
            std = np.nanstd(vals)
            var = np.nanvar(vals)
            kurt = scipy.stats.kurtosis(vals)
            skew = scipy.stats.skew(vals)
            percentile25 = np.nanpercentile(vals,25)
            percentile50 = np.nanpercentile(vals, 50)
            percentile75 = np.nanpercentile(vals, 75)
            names = [feat.strip()+"_"+stat for stat in stats_names]
            feats = [maximum, minimum, mean, median, std, var, kurt, skew, percentile25, percentile50, percentile75]
            for n in names:
                mm_names.append(n)
            for f in feats:
                mm_feats.append(f)
    new_file = open(mm_file, 'w')
    new_file.write(','.join(mm_names)+'\n')
    new_file.write(','.join([str(mm) for mm in mm_feats]))
    new_file.close()
    print 'Done combining modalities!'


def one_csv(my_dir):
    mm_files = glob.glob(my_dir + "/*_multimodal.csv")
    dfs = []
    for file_name in mm_files:
        dfs.append(pandas.read_csv(file_name))
    frame = pandas.concat(dfs)
    frame.to_csv(os.path.join(my_dir, "ALL_MULTIMODAL.csv"))


def json2txt(json_file):
    file = open(json_file,'r')
    data = json.load(file)
    transcription = []
    for utterance in data["results"]:
        if "alternatives" not in utterance: raise UnknownValueError()
        for hypothesis in utterance["alternatives"]:
            if "transcript" in hypothesis:
                transcription.append(hypothesis["transcript"])
    newF = open(json_file.replace('.json','.txt'),'w')
    for line in transcription:
        newF.write(line.encode('ascii','ignore'))
    newF.close()
    print "Done converting json to txt - %s!"%json


def load_zipfiles(dir):
    # Get zip directories
    zip_files = [f for f in os.listdir(dir) if f.endswith('.zip')]
    transcripts = []
    for z in zip_files:
        transcript_file = dir+'/'+z
        pid = z.split('_')[0]
        archive = zipfile.ZipFile(transcript_file, 'r')
        archive_files = archive.namelist()
        for f in archive_files:
            if 'TRANSCRIPT' in f:
                # new_csv = open('/Users/michellemorales/Desktop/MoralesDocs/DAIC_WOZ/Transcripts/%s_transcript.txt'%pid,'w')
                data = StringIO.StringIO(archive.read(f))  # don't forget this line!
                reader = csv.reader(data)
                for row in reader:
                    if row:
                        start, end, name, text = row[0].split('\t')
                        if name == 'Participant':
                            line = pid + ',' + text.strip()
                            # new_csv.write(text.strip()+'\n')
                            transcripts.append(line)
    with open('/Users/michellemorales/Desktop/MoralesDocs/DAIC_WOZ/%s_transcript.csv'%pid, 'w') as new_csv:
        for line in transcripts:
            new_csv.write(line.split(',')[1]+'\n')
    print 'DONE!'

