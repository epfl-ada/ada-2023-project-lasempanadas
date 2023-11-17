# ada-2023-project-lasempanadas

## 1. Abstract
What makes the carreer of Leonardo DiCaprio successful, while the one of Zoe Saldana is way more mitigated?

In our project, we dive into the complex world of the film industry to discover the secrets behind an actor's rise to fame. Our goal is to dissect the elements composing the fame, transforming it into a measurable entity: a 'fame score'. This project aims not just to explore but to predict the most effective strategies for actors to amplify their fame.

Our plan includes developing a dynamic career path generator, giving you piece of advice for navigating the complex terrain of showbiz success. In this initial phase, we will explore our datasets and preprocess it in order to prepare it for further analysis. We will then embark on a first data analysis to uncover correlations between an actor's fame score and their roles, considering personal attributes and the impact of co-starring with established celebrities. Furthermore, we investigate whether an actor's genre (movie genre) diversity in the movie they play in influences their popularity and recognition. 


## 2. Research questions
In this data analysis we would like to understand what makes an actor famous.
First, we should define what is fame and a method to compute it as a continuous variable: fame score.

Here is a list of the main ideas we want to dig into :

- What is the relation between the fame score evolution and the roles you play based on your characteristics ?
- What is the influence of other actors in a film on your own fame score ? Especially if one of them is already a celebrity.
- Should an actor aim at casting in a broad genre spectrum of movies so as to be known to a larger audience. Or instead, should he focus on a specific genre to be recognized as a specialist?



## 3. Additional datasets
To download the CMU, IMDB and the ACL persona dump datasets, run the following commands : 

```bash
chmod +x download_data.sh
./download_data.sh
```


- [IMDB dataset](https://developer.imdb.com/non-commercial-datasets/) : Because of the boxoffice sparsity in the given dataset, we decide to use the imdb dataset containing movie ratings for many more movies.
- [ACL persona dump](https://github.com/MichelDucartier/ACL_personas_dump/tree/master) : Github repository containing data about characters' persona. Personas are computed using the code from [ACL2013_Personas](https://github.com/dbamman/ACL2013_Personas/tree/master) Github repository which runs the model define in the paper [Bamman, O'Connor and Smith, "Learning Latent Personas of Film Characters" (ACL 2013)](https://aclanthology.org/P13-1035.pdf). This model takes as input the movie plots from CMU dataset and passes them through the [Stanford CoreNLP](https://stanfordnlp.github.io/CoreNLP/) pipeline.

## 4. Methods
### T-test : 
We use a t-test to compare the fame score increases' means between actors who played with a celebrity and those who did not. This t-test checks the validity of the null hypothesis being "the 2 groups have identical means".

### Linear regression
Such regression is used to assess the strength between the fame score and the genre diversity of the pasts movies. The linear regression is more suitable as the output (fame score) is continuous.



## 5. Proposed timeline

- Director and film crew analysis
- Improve the fame score computation to make it more realistic
- Paired matching for feat analysis
- Network analysis
- Create career predictors 
- Datastory and code cleaning and uniformization 
- Code implementation on website 
- Finalize the report




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
    <td class="tg-0lax">Improve the fame score computation to make it more realistics</td>
  </tr>
  <tr>
    <td class="tg-0lax">Killian Hinnard</td>
    <td class="tg-0lax">Create career predictors</td>
  </tr>
  <tr>
    <td class="tg-0lax">Rémi Oddon</td>
    <td class="tg-0lax">Paired matching for feat analysis</td>
  </tr>
  <tr>
    <td class="tg-0lax">Simon Bruno</td>
    <td class="tg-0lax">Network analysis </td>
  </tr>
  <tr>
    <td class="tg-0lax">Joshua Cohen-Dumani</td>
    <td class="tg-0lax">Code implementation on website</td>
  </tr>
</tbody>
</table>




