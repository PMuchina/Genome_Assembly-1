#!/bin/bash
#SBATCH --job-name=quast_flye
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 8
#SBATCH --mem=5G
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=ALL
#SBATCH --mail-user=firs.name@uconn.edu
#SBATCH -o %x_%A.out
#SBATCH -e %x_%A.err

hostname
date

##########################################################
##              QUAST                                   ##
##########################################################

module load quast/5.0.2

quast.py ../../08_purge/flye/curated.fasta \
        --threads 8 \
        -o quast_flye
        