2765, as the number of stars embedded in the sidewalks along Hollywood Blvd and Vine Street in the heart of Hollywood, Los Angeles California. 
For artists, these stars symbolize the pinnacle of glory, recognizing their talent and success in the entertainment industry.
Among all these stars, more than 60% belong to actors who, at some point in their career, portrayed a role that would help them reach an everlasting fame.
But as shiny as these stars may be, some prominent figures in the industry are still missing from the path of the coveted street. Therefore, despite their undeniable success,  you won’t be able to find Brad Pitt, Leonardo Di Caprio, Al Pacino, Julia Roberts or Angelina Jolie’s stars to lead your way along the Boulevard.

And while the reasons for such absence may remain undisclosed, it still raises the question of what fame truly means. Naturally, fame cannot and will never solely be measured with trophies, glittery stars trampled on, or tags and fan accounts on social media. Fame indeed also illustrates the diversity and richness of an artist journey.  While some might have soared after a single iconic role and stay for the eternity the little boy who played Harry Potter, other have thrived through a diverse array of roles and could be considered as the most versatile performer of their generation, capable of delivering outstanding performances in any situation. 

In the following work you will embark yourself on a journey to unveil how actors fame has varied throughout the years and how actors can stay under the spotlight for a longer period. To interpret data from selected datasets, a fame score must first be computed to depict the complexity of fame through time and the imapct of artists’ interactions and roles in various genres. 

To answer this let’s continue along the following direction: **put the plan here**

Idea of plan: 

1.	How to build our fame score: discovery of the dataset and determination of metrics used in the fame score.
2.	Fame score function presentation + illustration of its efficiency with some basic visualization and analysis
3.	The core analysis around the fame score
4.	Conclusion with an assessment of the results: is the fame score enough precise or how could we improve it to answer our initial question

# A Tale of Acting Careers


The world of cinema has long captivated the hearts of many. The stories, visuals, and music in movies has a sort of ethereal quality which transports one to another world and through an adventure of emotions, all in the span of a couple of hours. However, behind every blockbuster, there are very real people, and these people are the hearts and minds of these works of art, which do so much for us. Naturally, these directors, writers, composers, and especially, actors, have a special place in society, and the very best of them are some of the most famous places on the planet. 

Have you ever been curious about the tale of acting careers? What adventures the actors themselves must go through to reach the heights of cinema? Well, we have, and through data, we will attempt to better understand what constitutes a great career, how success in the film industry can be measured, and even if there's anything you, an aspiring actor, can do about it to maximise your chances!

In order to do this, we needed data. *A lot* of data. The foundation of our data is the CMU Movie Summary Corpus, which collected data from over 42'000 movies, extracted from their Wikipedia page, from 2012. Then, seeing that we could greatly augment our analytical power from using data from the freely available IMDB datasets, we decided to use those too. The final piece of the puzzle for us were the results of the paper this data was collected for, which included the *personas* of several thousands of characters, which correspond to common character stereotypes. 

Together, we will delve into the depths of hollywood, bollywood, and everything in between, to uncover the secrets of not only the stories actors play, but also the actors' stories themselves. Their rise to fame for some, the stories of their networks, and roles, over time!

# Let's begin our story by understanding the data...

## The Setting

Our data, after extensive cleaning, and merging, contains a wide array of information. Let's understand what the data is telling us, the situation, before rushing into the plot. 

Our first question is historical. How many movies do we have for each time period? How has the volume of cinema evolved over time? 

<span style="color: red;">Ajouter image du nombre de films ar année avec notre data final.</span>

The number of movies increases dramatically with time! Cinema has become more and more popular, and we now see more than <span style="color: red;">10x</span> the number of movies per year, as compared to the early 20th century. 

This increase in the number of movies has also seen a dramatic increase in the amount of money in the industry over time, as we can see from the below inflation-adjusted box office numbers below. 

<span style="color: red;">average inflation-adjusted box office par année</span>

Then, we turn to the genres. What are the most popular genres of movies through the ages? Does this change over time?

<span style="color: red;">Ajouter plotly des genres les plus populaires</span>

### (ajouter analyse ici)

Next, we will try to understand the average rating, and the number of votes a movie received on the IMDB website. We have below quite a complex graph which tells us a lot, let's break it down together.

<span style="color: red;">Adjusted Box-Office, with respect to Number of Votes and Average Rating</span>

- First, we can notice that the box office and quantity of movies increases dramatically, especially in the last 50 years, as we have previously mentioned. 
- Then, we can observe a clear increase in the number of votes in the top right corner, meaning that as box office and average rating increase, our number of votes also tends to increase. 
- Movies with a low rating also tend to have lower box offices, and a low number of votes. 

Quality and reach (ie. the amount of people that see the movie) are linked! Who knew? 

Now that we have set the situation, we can move on to the next step in building our story. 

## The Characters

So, the characters! What the main characters that we will follow throughout our tale, seeing their every move and understanding, little by little, what they are hiding?

Our supporting characters are the personas. We'll get introduced to them with the below plot, which shows the most famous actors in each character trope. Don't worry, we'll soon get to how this "fame" is calculated...

<span style="color: red;">tableau avec les persona et les acteurs les plus connus dans cette catégorie (ou autre graphique que vous pouvez trouver intéressant pour introduire les personas...)</span>

Now, onto the main character of our story! What we are most interested in understanding, and exploring, is the *fame* of actors. So how can we get to a "fame score"? What can we do to somehow put a numerical value on the popularity of any given actor, on any given year? 

The challenge here lies in combining multiple elements of our setting, the situation around what is happening with movies at a certain point, and what actors play in which movies. We also somehow to differentiate actor fame and movie fame, as well as capture the effect of time, as we, the audience, gradually lose interest over time. 

Our answer is grounded in a couple assumptions. Firstly, we conjectured that the number of people that watch your movies is a key part of your intrinsic "fame" at a moment in time. Secondly, we decided to include the average rating of the movies the actors played in as part of a 