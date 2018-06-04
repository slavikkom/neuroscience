# train word2vec on the two sentences
import gensim
from nltk.tokenize import sent_tokenize, word_tokenize
from nltk.corpus import stopwords
import string
import re

text = ""
with open(r'total.txt') as f:
    text = f.read()
text = re.sub(r"[^A-Za-z ]+", '', text)
stops = set(stopwords.words('english'))
text = text.replace('\n', ' ')
sentences = sent_tokenize(text)
sent = []
for s in sentences:
    ss = s.lower()
    words = word_tokenize(ss)
    words = [k for k in words if len(k) > 3 and k not in stops]
    sent.append(words)

model = gensim.models.Word2Vec(sent, min_count=3)
model.save('mymodel')
print(model.similarity('paper', 'nutrition'))