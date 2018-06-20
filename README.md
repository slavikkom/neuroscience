# neuroscience
 Reconstructing and visualizing a human brain made from word embedding
 
 Get_data folder consist of script script.sh, which download all PubMed articles in PDF format. After that, it uses
 Python library pdfminer to convert pdf files to txt, then script concatenates all text files from dump_txt to file all.txt.
 This file needs preprocessing and then may be fitted to train word2vec model. There should be created folders dump_pdf and dump_txt
 in folder getData for correct work. 
 Run script train_script.sh to perform preprocessing of corpora (obtained from previous step, in file all.txt), and to train word2vec model.
 Will be created several files, that begins with mymodel.*
 Ipython Notebook processing_trained_model_and_t_sne.ipynb consist of similarities quality estimation with random words (including t-test) and
 dimensionality reduction using t-SNE. Results of t-SNE are saved to brain_points.csv.
 
 File brain_points.csv can be fitted (with some additional manipulations) to octave function scatter3 to obtain visualization.
