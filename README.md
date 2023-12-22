# ada-2023-project-lasempanadas

## 1. Abstract: What we do here
2765, as the number of stars embedded in the sidewalks along Hollywood Blvd and Vine Street in the heart of Hollywood, Los Angeles California. 
For artists, these stars symbolize the pinnacle of glory, recognizing their talent and success in the entertainment industry.
Among all these stars, more than 60% belong to actors who, at some point in their career, portrayed a role that would help them reach an everlasting fame.
But as shiny as these stars may be, some prominent figures in the industry are still missing from the path of the coveted street. Therefore, despite their undeniable success,  you won’t be able to find Brad Pitt, Leonardo Di Caprio, Al Pacino, Julia Roberts or Angelina Jolie’s stars to lead your way alogn the Boulevard.

And while the reasons for such absence may remain undisclosed, it still raises the question of what fame truly means. Naturally, fame cannot and will never solely be measured with trophies, glittery stars trampled on, or tags and fan accounts on social media. Fame indeed also illustrates the diversity and richness of an artist journey.  While some might have soared after a single iconic role and stay for the eternity the little boy who played Harry Potter, other have thrived through a diverse array of roles and could be considered as the most versatile performer of their generation, capable of delivering outstanding performances in any situation. 

In the following work, you will embark yourself on a journey to unveil how actors fame has varied throughout the years and how actors can stay under the spotlight for a longer period. To interpret data from selected datasets, a fame score must first be computed to depict the complexity of fame through time and the imapct of artists’ interactions and roles in various genres. 

To answer this let’s continue along the following direction: 

0.  Data Preprocessing
1.	Initial insight
2.  Fame Score Analysis
3.	Featuring Analysis
4.	Network Analysis
5.  Genre Analysis
6.  Persona Analysis
7.  Country Analysis

[Link toward the datastory](https://yseoo.github.io/las-empanadas-story/)


## 2. Research questions
In this data analysis we would like to understand what makes an actor famous. Also once fame is fulfilled, how can an actor maintain it.
For this porject to be relevant, a metrics to assess this abstract and vague notion of fame must be defined. We will call it the Fame Score. A detailled description of the Fame Score can be found on the Notebook. However, because of its central aspect in our work, here is a recap on its main characteristics :

- The Fame Score is a continuous variable between 0 and 1.
- The Fame Score is computed based on the released year, the number of votes and the rating of the movie. Also to differentiate actors who played in several movies but never had a leading role, we add a wieght to the Fame Score if the actor is the lead actor of the movie.
- The Fame Score is exponentially decaying with time between two mmovies an actor played in. As a boost shot for a vaccine to be the most efficient, an actor must maintain his fame by playing regurlarly, especially in a fast evolving industry such as the movie industry.
- The Fame Score is additive: on top of the boosting effect, if you are still a tiny bit famous after a couples of years, then your fame score will increase again with your next movie. But you never start back from 0 (except if you really leave the game for too long).


From this Fame Score we will be able to organize our analysis around the following questions: 

- What is the relation between the fame score evolution and the roles you play based on your characteristics ?
- How long it takes to become famous ? And How long does it last ?
- Does your fame depends on your gender/ethnicity/country of origin ?
- What is the influence of other actors in a film on your own Fame Score ? Especially if one of them is already a celebrity. Should you play with Leo DiCaprio to become famous or stay away from him to avoid being overshadowed and one day replace him ?
- Should an actor aim at casting in a broad genre spectrum of movies so as to be known to a larger audience. Or instead, should he focus on a specific genre to be recognized as a specialist?




## 3. Additional datasets
To download automatically all the CMU, IMDB and the ACL persona dump datasets we used in this project, run the following commands : 

```bash
chmod +x download_data.sh
./download_data.sh
```


- [IMDB dataset](https://developer.imdb.com/non-commercial-datasets/) : Because of the boxoffice sparsity in the given dataset, we decide to use the imdb dataset containing movie ratings for many more movies. In addition we also used an extra dataset containing extra characteristics for the actors such that 'being the lead actor or not', 
- [ACL persona dump](https://github.com/MichelDucartier/ACL_personas_dump/tree/master) : Github repository containing data about characters' persona. Personas are computed using the code from [ACL2013_Personas](https://github.com/dbamman/ACL2013_Personas/tree/master) Github repository which runs the model define in the paper [Bamman, O'Connor and Smith, "Learning Latent Personas of Film Characters" (ACL 2013)](https://aclanthology.org/P13-1035.pdf). This model takes as input the movie plots from CMU dataset and passes them through the [Stanford CoreNLP](https://stanfordnlp.github.io/CoreNLP/) pipeline.
- [Ethnicity Freebase Interpretation](https://github.com/epfl-ada/ada-2023-project-draco) : Github repository from another group, big thanks to them. 

## 4. Methods
### T-test : 
We use a t-test to compare the fame score increases' means between actors who played with a celebrity and those who did not. This t-test checks the validity of the null hypothesis being "the 2 groups have identical means".

### Linear regression
Such regression is used to assess the strength between the fame score and the genre diversity of the pasts movies. The linear regression is more suitable as the output (fame score) is continuous.

### Logistic regression
Same as for the linear regression analysis but to analyse effect of playing or not with a Top 100 actor. The logistic regression is more suitable as the output (playing with a Top 100 actor or not) is binary. 
Logistic regression is also used to assess the effect of belonging to a Louvain community 

### ANOVA
ANOVA Test was used to compare the different Personas population characteristics: more specifically, we investigated fameScore_diff.
ANOVA Test was also used to assess if it is usefull to join some Louvain communities or not.

### Paired Matching
Like apple and oranges, actors are different (some are rising stars while other are already accomplished) and matching have be performed to mitigate any confounding effect on the feat analysis. In this study, matching is performed such that two actors with the same persona are exactly matched and other covariates are balanced with a propensity score.

### Network analysis
Network is build to connect actors who played together. The idea is to analyse the network and see if there is a correlation between the number of connections (and with whom) and the fame score of an actor. It comes in addition to further the feat analysis and bring another perpective of the data. A quick note is that with the size of the dataset, the network is too diverse. The analysis will be performed on a subset of the data with Anglophone actors. Some centrality metrics (betweenness, katz and closeness centrality). Then Louvain algorithm is used to cluster the network as communities.


## 5. Timeline

- 17/11/2023 : Milestone 2
- 27/11/2023-02/12/2023 : What need to be improved from M2 feedback + Starting of complementary analysis
- 02/12/2023-09/12/2023 : Improvement of the Fame Score computation 
- 09/12/2023-16/12/2023 : New Analysis (Networks/Feat/Country/Genre...) + Visualization of the results + Website creation
- 16/12/2023-22/12/2023 : Finalization of the website + Datastory + Final improvements
- 22/12/2023 : Milestone 3: Enjoy it


## 6. Contribution

<table class="tg" style="undefined;table-layout: fixed; width: 500px">
<colgroup>
<col style="width: 164px">
<col style="width: 178px">
</colgroup>
<thead>
  <tr>
    <th class="tg-0lax"></th>
    <th class="tg-0lax">Tasks</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0lax">Alexandre Vray</td>
    <td class="tg-0lax">Genre & Persona & Country Analysis</td>
  </tr>
  <tr>
    <td class="tg-0lax">Killian Hinnard</td>
    <td class="tg-0lax">Website creation & code merging, improving </td>
  </tr>
  <tr>
    <td class="tg-0lax">Rémi Oddon</td>
    <td class="tg-0lax">Feat Analysis & Network Analysis </td>
  </tr>
  <tr>
    <td class="tg-0lax">Simon Bruno</td>
    <td class="tg-0lax">Data Visualiziation</td>
  </tr>
  <tr>
    <td class="tg-0lax">Joshua Cohen-Dumani</td>
    <td class="tg-0lax">Data Story</td>
  </tr>
</tbody>
</table>




