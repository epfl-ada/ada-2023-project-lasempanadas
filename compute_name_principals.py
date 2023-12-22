import pandas as pd

print('Computation of name_principals.csv')

#data paths
data_path = './data/'

principals = pd.read_csv('./title.principals.tsv', sep='\t', usecols=[0,2,3])
actors= pd.read_csv('./name.basics.tsv', sep='\t', usecols=[0,1])

principals = principals.query("category == 'actor'")
principals = principals[['tconst','nconst']]
actors = actors[['nconst','primaryName']]

principals = principals.merge(actors,on='nconst')[['tconst','primaryName']]

principals.to_csv('./name_principals.csv',index=False)