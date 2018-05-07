# neuroscience
 Reconstructing and visualizing a human brain made from word embedding
 
 Get_data folder consist of script script.sh, which download all PubMed articles in PDF format. After that, it uses
 Python library pdfminer to convert pdf files to txt, then script concatenates all text files from dump_txt to file all.txt.
 This file needs preprocessing and then may be fitted to train word2vec model.
