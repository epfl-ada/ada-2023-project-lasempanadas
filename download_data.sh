#remove the folder data if it already exist and make an brande new one
rm -rf data
mkdir data && cd data


#Get the cmu dataset, unizip it and keep only the useful files
wget http://www.cs.cmu.edu/~ark/personas/data/MovieSummaries.tar.gz
tar -xzf MovieSummaries.tar.gz
mv MovieSummaries/character.metadata.tsv character.metadata.tsv
mv MovieSummaries/movie.metadata.tsv movie.metadata.tsv
rm MovieSummaries.tar.gz
rm -rf MovieSummaries


#Download all the necessary dataset from imdb and unzip it
wget https://datasets.imdbws.com/title.basics.tsv.gz
gunzip title.basics.tsv.gz

wget https://datasets.imdbws.com/title.ratings.tsv.gz
gunzip title.ratings.tsv.gz

wget https://datasets.imdbws.com/title.principals.tsv.gz
gunzip title.principals.tsv.gz

wget https://datasets.imdbws.com/name.basics.tsv.gz
gunzip name.basics.tsv.gz

#Pre compute the table name_principal to have only the useful information
python ../compute_name_principals.py


#Get the precomputed personas table based on the movie summaries
git clone https://github.com/MichelDucartier/ACL_personas_dump.git
gunzip ACL_personas_dump/personas/25.100.lda.log.txt.gz
mv ACL_personas_dump/personas/25.100.lda.log.txt 25.100.lda.log.txt
rm -rf ACL_personas_dump


#Get a mapping between the freebase Id and a understanable ethnicity name
git clone https://github.com/epfl-ada/ada-2023-project-draco.git
mv ada-2023-project-draco/Data/ethnicities_data.tsv ethnicities_data.tsv 
mv ada-2023-project-draco/Data/ethnicity_group_data.tsv ethnicity_group_data.tsv 
rm -rf ada-2023-project-draco