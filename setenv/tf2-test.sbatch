#!/bin/env bash

#SBATCH --partition="gpuq"
#SBATCH --time=1:00:00
#SBATCH --output="tf2-gpu-test-out-%j.out"
#SBATCH --error="tf2-gpu-test-err-%j.err"
#SBATCH --nodelist="node008"
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem-per-cpu=4G
#SBATCH --gres="gpu:1"
#SBATCH --job-name="tf2-gpu-test"

module load anaconda3/current
#conda create --name test1 

# Configure shell for conda utilities
. /cm/shared/apps/anaconda3/etc/profile.d/conda.sh

# Deactivate system conda environment (and all others) to avoid version unpredictability
conda deactivate

# Activate user conda environment previously built with all deps
conda activate tf2-py36-env

srun -l /home/alber@chapman.edu/keckcluster/setenv/tfexample.py
