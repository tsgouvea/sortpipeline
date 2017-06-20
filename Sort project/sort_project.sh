#!/bin/bash

ANIMAL="TG017"
echo $ANIMAL
# SESSION="TG017_06-17-2017-19-09-24"
# NTETR="1"
# PATH_TRODES="/home/thiago/Trodes"
# #PATH_MOUNTAIN = "/home/thiago/mountainlab"
# PATH_NEURODATA="/home/thiago/Neurodata"
# PATH_PARENT=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
# echo PATH_PARENT=$PATH_PARENT
#
# mkdir -p $PATH_NEURODATA/$ANIMAL/REC $PATH_NEURODATA/$ANIMAL/LFP $PATH_NEURODATA/$ANIMAL/MDA $PATH_NEURODATA/$ANIMAL/Mountain/$SESSION/
#
# #PREPARE THE RAW DATA
# $PATH_TRODES/exportmda -rec $PATH_NEURODATA/$ANIMAL/REC/$SESSION.rec -outputdirectory $PATH_NEURODATA/$ANIMAL/MDA -reconfig $PATH_PARENT/TG017_06-17.trodesconf
# mv $PATH_NEURODATA/$ANIMAL/MDA/$SESSION.mda $PATH_NEURODATA/$ANIMAL/MDA/$SESSION
#
# #PREPARE A SORTING PROJECT
# #per https://github.com/magland/mountainlab/blob/master/doc/the_first_sort.md
# cp $PATH_PARENT/curation_default_20161201.script $PATH_NEURODATA/$ANIMAL/Mountain/$SESSION
# echo ms2 mountainsort_002.pipeline -curation=curation_default_20161201.script >> $PATH_NEURODATA/$ANIMAL/Mountain/$SESSION/pipelines.txt
#
# for iTetr in `seq 1 $NTETR`;
# do
#   PATH_DS=$PATH_NEURODATA/$ANIMAL/Mountain/$SESSION/datasets/tt$iTetr
#   mkdir -p $PATH_DS
#   echo {\"samplerate\":30000} >> $PATH_DS/params.json
#   echo ds$iTetr datasets/tt$iTetr >> $PATH_NEURODATA/$ANIMAL/Mountain/$SESSION/datasets.txt
#   prv-create $PATH_NEURODATA/$ANIMAL/MDA/$SESSION/$SESSION.nt$iTetr.mda $PATH_DS/raw.mda.prv
#
#   # RUN THE SORTING
#   cd $PATH_NEURODATA/$ANIMAL/Mountain/$SESSION
#   mp-daemon-start thiago
#   kron-run ms2 ds$iTetr
# done
#
# # # EXPORT LFP
# # $PATH_TRODES/exportLFP -rec $PATH_NEURODATA/$ANIMAL/REC/$SESSION.rec -outputdirectory $PATH_NEURODATA/$ANIMAL/LFP/
