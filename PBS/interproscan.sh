#!/bin/bash

#PBS -l nodes=1:ppn=4
#PBS -l mem=12gb
#PBS -l walltime=12:00:00
#PBS -M s.nobs@student.unsw.edu.au
#PBS -m ae
#PBS -j oe

cd /srv/scratch/z5062530/interproscan

module add openjdk/11.0.2
module add perl/5.28.0
module add signalp/5.0b
module add tmhmm/2.0c
module add phobius/1.01
module add interproscan/5.44-79.0

for f in /srv/scratch/z5062530/interproscan/*.fasta; do
  interproscan.sh -i "$f" -pa -T /srv/scratch/z5062530/interproscan/tempdir1 -d /srv/scratch/z5062530/interproscan/output1
done