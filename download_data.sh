rm -rf data
mkdir data && cd data
wget http://www.cs.cmu.edu/~ark/personas/data/MovieSummaries.tar.gz
tar -xzf MovieSummaries.tar.gz
rm MovieSummaries.tar.gz
wget https://datasets.imdbws.com/title.basics.tsv.gz
gunzip title.basics.tsv.gz
mv title.basics.tsv title_basics.tsv
wget https://datasets.imdbws.com/title.ratings.tsv.gz
gunzip title.ratings.tsv.gz
mv title.ratings.tsv title_ratings.tsv
git clone https://github.com/MichelDucartier/ACL_personas_dump.git
cd ACL_personas_dump/personas
gunzip 25.100.lda.log.txt.gz
