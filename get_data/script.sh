#!/bin/bash

#The name of the job is test_job
#SBATCH -J neuroscience_project

#The job requires 1 compute node
#SBATCH -N 1

#SBATCH --partition=cpu

module load python-3.6.0

files=`find ./dump_pdf/ -type f `
for filename in ${files}
do
  echo $filename
  file="dump_txt/$RANDOM.txt"
  echo $file
  python "pdfminer.six\tools\pdf2txt.py" $filename -o $file 
done

cat dump_txt/*.txt >> all.txt