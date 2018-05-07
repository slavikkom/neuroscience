#!/bin/bash

wget -r —preferred-location dump_pdf/ ftp://ftp.ncbi.nlm.nih.gov/pub/pmc/oa_pdf/

files=`find ./dump_pdf/ -type f `
for filename in ${files}
do
  echo $filename
  file="dump_txt/$RANDOM.txt"
  echo $file
  python3 "C:\Users\Slav\Anaconda3\Lib\site-packages\pdfminer.six\tools\pdf2txt.py" $filename -o $file 
done

cat dump_txt/*.txt >> all.txt