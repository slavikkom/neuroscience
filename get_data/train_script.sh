#!/bin/bash

#The name of the job is test_job
#SBATCH -J neuroscience_project

#The job requires 1 compute node
#SBATCH -N 1

#SBATCH --partition=cpu

module load python-3.6.0

python "train_model.py"