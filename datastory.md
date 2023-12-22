# A Tale of Acting Careers


The world of cinema has long captivated the hearts of many. The stories, visuals, and music in movies has a sort of ethereal quality which transports one to another world and through an adventure of emotions, all in the span of a couple of hours. However, behind every blockbuster, there are very real people, and these people are the hearts and minds of these works of art, which do so much for us. Naturally, these directors, writers, composers, and especially, actors, have a special place in society, and the very best of them are some of the most famous places on the planet. 

Have you ever been curious about the tale of acting careers? What adventures the actors themselves must go through to reach the heights of cinema? Well, we have, and through data, we will attempt to better understand what constitutes a great career, how success in the film industry can be measured, and even if there's anything you, an aspiring actor, can do about it to maximise your chances!

In order to do this, we needed data. *A lot* of data. The foundation of our data is the CMU Movie Summary Corpus, which collected data from over 42'000 movies, extracted from their Wikipedia page, from 2012. Then, seeing that we could greatly augment our analytical power from using data from the freely available IMDB datasets, we decided to use those too. The final piece of the puzzle for us were the results of the paper this data was collected for, which included the *personas* of several thousands of characters, which correspond to common character stereotypes. 

Together, we will delve into the depths of hollywood, bollywood, and everything in between, to uncover the secrets of not only the stories actors play, but also the actors' stories themselves. Their rise to fame for some, the stories of their networks, and roles, over time!

# Let's begin our story by understanding the data...

## The Setting

Our data, after extensive cleaning, and merging, contains a wide array of information. Let's understand what the data is telling us, the situation, before rushing into the plot. 

Our first question is historical. How many movies do we have for each time period? How has the volume of cinema evolved over time? 

<span style="color: red;">Ajouter plot du nombre de films par année avec notre data final.</span>

The number of movies increases dramatically with time! Cinema has become more and more popular, and we now see more than <span style="color: red;">10x</span> the number of movies per year, as compared to the early 20th century. 

This increase in the number of movies has also seen a dramatic increase in the amount of money in the industry over time, as we can see from the below inflation-adjusted box office numbers below. 

<span style="color: red;">average inflation-adjusted box office par année, très simple</span>

Then, we turn to the genres. What are the most popular genres of movies through the ages? How many are present in our data?

<span style="color: red;">Ajouter plotly des genres les plus populaires, pas besoin d'être compliqué.</span>

### (ajouter analyse ici) + parler du nombre de genres (y'a un mec qui a joué 60 genres... c'est quel pourcentage de tous les genres répertoriés par le dataset??)

Next, we will try to understand the average rating, and the number of votes a movie received on the IMDB website. We have below quite a complex graph which tells us a lot, let's break it down together.

<span style="color: red;">Adjusted Box-Office, with respect to Number of Votes and Average Rating, celui de sim est carré</span>

- First, we can notice that the box office and quantity of movies increases dramatically, especially in the last 50 years, as we have previously mentioned. 
- Then, we can observe a clear increase in the number of votes in the top right corner, meaning that as box office and average rating increase, our number of votes also tends to increase. 
- Movies with a low rating also tend to have lower box offices, and a low number of votes. 

Quality and reach (ie. the amount of people that see the movie) are linked! Who knew? 

Now that we have set the situation, we can move on to the next step in building our story. 

## The Characters

So, the characters! What the main characters that we will follow throughout our tale, seeing their every move and understanding, little by little, what they are hiding?

Our supporting characters are the personas <span style="color: red;">delete si on utilise pas</span>. We'll get introduced to them with the below plot, which shows the most famous actors in each character trope. Don't worry, we'll soon get to how this "fame" is calculated...

<span style="color: red;">tableau avec les persona et les acteurs les plus connus dans cette catégorie (ou autre graphique que vous pouvez trouver intéressant pour introduire les personas...)</span>

Now, onto the main character of our story! What we are most interested in understanding, and exploring, is the *fame* of actors. So how can we get to a "fame score"? What can we do to somehow put a numerical value on the popularity of any given actor, on any given year? 

### The Fame Score

The challenge here lies in combining multiple elements of our setting, the situation around what is happening with movies at a certain point, and what actors play in which movies. We also somehow to differentiate actor fame and movie fame, as well as capture the effect of time, as we, the audience, gradually lose interest over time. 

Our answer is grounded in a couple assumptions. 
- Firstly, we conjectured that the number of people that watch your movies is a key part of your intrinsic "fame" at a moment in time. 
- Secondly, we decided to include the average rating of the movies the actors played in as part of our fame score, as an effort to capture "popularity". This was based on the idea that the quality of your movie, as evidenced by the public perception of it, also plays an important role in the fame of an actor. 
- Thirdly, as we saw earlier the box office, and number of movies exploded over time, and more recent actors would be "overweighted" by virtue of movies simply having a much broader reach today. Thus, we added a term inversely proportional to the year the movie was released (minus a constant term to increase the effect), in order to not drown out actors from days of yore. 
- Fourth, main characters benefit from a movie's success a lot more than supporting actors. For this reason, we have added a "bonus" if the actor played a main character in a given movie to the effect it has on this individual actor's fame. 

These three terms allow us to calculate an "instantaneous" fame score. They allow us to measure the impact that a single movie had on a single actor at a given point in time. However, it is still missing some pieces. Notably, we have not yet considered time. This is the way we reasoned while building our metric:

- We assumed that movies give a large spike to an actor's fame upon release, which then decays exponentially as time goes on. 
- We also surmised that fame between movies is additive, and that any "residual fame" you have from your previous movies should be added to your "total fame", to get to what we have called your "fame score". 

Here is the fame score in action, for example the score over the career of Leonardo DiCaprio:

<span style="color: red;">fame Score Leonardo DiCaprio over the years, essayer d'avoir des chiffres plus lisibles et plus gros, le minimum d'overlap possible</span>

### Some caveats...

The fame score that we have calculated is a great measure of how well the movies an actor has played in have performed, as well as estimating the residual effects of time and the individual contribution the actor has made to the movie. However, in real life a lot of fame is also driven by what happens outside the silver screen. Unfortunately, we did not have time to look into other sources of data which might have included "social" popularity, and including such a metric would have been very difficult to track over the 100 years or so that our current data spans (the way we talk about our favorite actors has changed enormously over this time period). 

However, we believe that our metric is sufficient to be a relatively accurate proxy for actual fame (after all, the bottom line for most actors, as an average, is how good your movies are), as well as being more accurate to proxy the fame within the industry, which is perhaps more relevant to any aspiring actor, and more indicative of whether you are remembered as an icon of cinema or of controversy. 

<span style="color: red;">ajouter d'autres caveats ici par rapport aux personas, ou autre compromis techniques qu'on a du faire</span>

# The Plot

Finally! Let's get into the crux of our story. We'll divide our plot into 3 arcs: 

1. Understanding the fame score: general trends
2. Digging deep: genre, persona, and country of origin analysis
3. What about networks?

Let's get into it!

## Arc 1. Understanding the fame score: general trends

As a first step toward understanding, let's first look at some general trends we could observe with our fame score metric. Let's go through different angles to try and understand what is going on. 

### Diversity

We first focused on trends in diversity. Does gender and ethnicity play a role in fame? Let's first have a look at the average "fame ratio" between male and female actors over time:

<span style="color: red;">average fame ratio of genders</span>

Perhaps we should be talking about a gender "fame gap"! It turns out male actors are on average more famous than female actors, which may not be surprising given the inequalities in the industry (main characters are predominantly male, for example, which may at least partly explain the difference). However, what is (somewhat) surprising is the lack of progress over time, and even though socially women have been given many more rights over the past century, this has not had a meaningful impact on the fame of actresses. Males have on average been around 20-30% more famous than women for the past 100 years, with relentless consistency. 

Next, let's look at ethnicities:

<span style="color: red;">average fame by ethnicity</span>

From the above plot we can see some interesting trends:
- It seems that asian/middle eastern actors had a peak in popularity in the 1920's, and a second one in the 40's. This could be due to a local surge in Bollywood, a really famous movie, or it could simply be that the wars in Europe led to a skew toward popularity in India, which was less affected (on average) than Europe. It also seems that their relative popularity has waned over time, since. 
- All other ethnic groups have seen a marked increase since the early 20th century, and are today relatively equal, which could be somewhat surprising when contrasted to the earlier result.

### Does longevity matter?

Is a longer career synonymous with more success? Our intuition could guess yes, but the reality is much different. We have conducted a short analysis to better understand how many years an actor needs to reach their "fame peak", as well as fame as a function of actor longevity, in order to tackle this issue. 

First, we looked at the distribution of "years it took for actors to reach their maximum fame score":

<span style="color: red;">metter le graphique de how many years ... mais changer le titre à un truc plus simple pour pas répéter texte. Peut-etre essayer de faire "toggle" par tranche de fame score plutot que de dupliquer le graphe. Essayer log x pour voir si c'est plus lisible.</span>


<span style="color: red;">Pour valider ca faudrait regarder la distribution de films que les acteurs font tout court. Si à peu près normale, alors ok, mais si power law alors on doit tej cette analyse. Faudrait aussi calculer le median ca pourrait etre interessant. Peut-être redondant avec celui d'après aussi</span>

We noticed that this seemed to follow some sort of power law, suggesting that actually, most actors hit their peak very early on in their careers. This may suggest that it is harder to break through in later years. We decided to control for the fame of the actors; perhaps it was only superstars who contributed to this number, or on the contrary, only the actors who never got their career going?

Another way to look at this data is to consider the following plot, which calculates the average fame score as a function of longevity:

<span style="color: red;">Mettre plot ".. since first movie", changer titre à un truc du style "Fame and longevity", x axis à "longevity". Tej la légende à droite.</span>

As we can clearly see from the above plot, after about 13-15 years, the fame score generally does not increase anymore(even decreases if you look at the top performers, denoted by the <span style="color: red;">top extremities (j'ai oublié le mot)</span>). This graph also helped uncover the fun fact that some actors actually had a career spanning 80+ years, with a single one spanning 89 years! The actor in question is Milton Berle, born in 1908. A movie featuring a character played by him was released in 2003, one year after his death in 2002. Nevertheless, a hugely impressive longevity which is completely unmatched. 

...and here concludes arc 1, the first wave of insights. Here, we learnt about historical trends in fame, diversity, and longevity. Let's use our newfound understanding to dig deeper, and find out where our analysis of the fame score will lead us next...

## Arc 2. Digging deep: career focus, and country of origin analysis

### Career focus: does it pay to be an adventurer?

As the next step in our journey of discovery, we decided to enter into the wild world of genres. Such diversity to explore! And yet, maybe there is such a thing as being too adventurous in cinema? 

Let's not get ahead of ourselves. let's first define a couple terms that we will later use without further explanation:
- Genre diversity refers to the number of genres an actor has played over his or her career. In the case of movies having multiple genres, we will keep the 3 main genres, so as to correctly capture "romantic dramas" or other multi-genre movies. 
- Movie diversity, which refers to the number of movies that an actor has played over his or her career. 
- (?) Persona diversity, referring to the number of different personas an actor has played over his or her career... you get the idea.

### Genre focus (REWORD FOCUS SECTIONS)

So, the results! Well, it turns out that being a "genreventurer" (having high genre diversity!) is not a terrible idea for actors! Below is a plot of the main fame score, as a function of genre diversity. 

<span style="color: red;">fame score/genre div from genre_analysis.ipynb. Rajouter titre, et peut-etre regarder le nom de l'acteur qui a joué 60 ptn de genres différents et qui est connu... peut-etre ajouter des confidence intervals comme simon?</span>

As we can see, the above analysis seems to suggest that it is generally a pretty good idea to wander around, and not just stick to playing in your favorite rom-coms. In fact, in what may seem pretty surprising, median fame scores increase until a genre diversity of around 30! (Yes, we also had to double check this). There is even an actor, the most adventurous of us all, who has played in movies with 60 (!) different genres!
### Movie focus

The news for the super-duper-motivated actors among you is also less exciting. Unfortunately, when it comes to movie diversity, it pays to play it simple. Here is a plot of the median fame score, with respect to the movie diversity:

<span style="color: red;">fame score/movie div from genre_analysis.ipynb. Rajouter titre. peut-etre ajouter des confidence intervals comme simon</span>

It seems like being a "movieventurer" is not a great idea. While we may get good results initially, it seems like playing too many films takes away from our fame. Taking a look back at how we defined the fame score, this could be due to average ratings becoming lower as quantity takes over quality, or perhaps smaller scale movies, which will get less traction, take less time to produce on average. This decline is steep, even despite our model rewarding a higher volume of films! (As it is an additive model)

### Isn't there a contradiction somewhere?

You may be right. However, we believe otherwise. The below graph, which plots the genre diversity and median fame score, looking only at groups with the same movie diversity, paints a slightly different story, which somehow blends the two above observations into a single insight. 

<span style="color: red;">mettre deuxième graphique plotly d'alex ici, avec genre diversity en x axis</span>

Indeed, it seems that for any given movie diversity, it generally is better to have a relatively low genre diversity. This blends both above insights together: it may indeed be better to play less movies, but it also seems that playing more movies within a certain niche is good for your career! We can see from the evolution of this data that fame does tend to increase as movie diversity increases, but most of the increase is in the lower end of genre diversity. Logically speaking, this could be because having a lower ratio of genres over movies played means that you can better establish yourself within this niche and thus can can get hired for bigger films within the same industry, which will perform better and thus boost your fame. 

### Persona focus

<span style="color: red;">insert persona analysis here</span>

### Country of origin

<span style="color: red;">(Ajouter texte si analyse d'alex)</span>

## Arc 3. What about networks?

As we have been strolling through our dataset, we have looked at a lot of different metrics, and we have explored a lot of different angles. However, there is one thing that we have thus far not mentioned, which is absolutely key to understanding careers, and fame: people! So far, all of our analyses have been network-agnostic, but we know this is not how the real world works. Our next, and final arc, will bring us through many hardships, as the plots can get pretty gnarly over there! However, we think that will also teach us a whole lot, and could be one of the keys to unlocking the secrets to fame!

Let's quickly get into it, jumping straight into our first topic: languages. 

### Connections: an overview

Our first order of business is to get a good idea of what the situation is. What is this strange new world that we're setting foot in? The first approach that we tried was to look at the graph of connections between actors (a link being defined as a movie played together), color-coded by language:

<span style="color: red;">network by language plot de remi. Idealement ajouter les autres components non connectés pour montrer les distributions de tout notre dataset, et de pouvoir en dire plus</span>

We loved this graph, as it quite clearly shows that the cinema industry, for better or for worst, is very segregated between countries. There is very little collaboration between Hollywood and Bollywood, as evidenced by the *very few* weak links between the two communities, but there is actually no collaboration between either of these two giants and <span style="color: red;">studios in other languages such as french or german</span>!

As a next step, we are very interested in looking at centrality. Due to the nature of our network, the centrality would be very heavily biased toward those weak links between Hollywood and Bollywood, which would also hold no guarantees with respect to their fame. <span style="color: red;">ajouter analyse des weak links?</span>

Having confirmed that the weak links between Hollywood and Bollywood are not necessarily special in our analysis of their fame score, we thus decided to focus on the actors of English movies from here on out. 

### Centrality: is it fame?


### Making communities


### Who are the most famous actors in history?

Now that we better understand the tales of acting careers, let's take a look back. A look back at all the previous actors, and let's see which of them were the most famous, the true icons of their time. Below is the evolution of the top 10 most famous actors through the ages. Enjoy!

<span style="color: red;">Ajouter raceplot de simon, mais changer (si possible): les barres bougent physiquement et pas juste les couleurs, pour voir la diff entre les années plus facilement. si possible, mettre les noms à gauche des barres pour pas qu'ils bougent tout le temps.</span>

Just for fun, we can also look at the 5 actors with the highest fame scores of all time. Here they are:

<span style="color: red;">5 acteurs les plus connus, avec leur nom, leur fame score, et l'année du pic</span>

# A look back: what did we learn? (REWORD)

Our tale seems to have reached its end. After having travelled through the ages with historical data, and have explored the diverse worlds of genres and diversity, passing through the vast expanse of networks, we can now finally rest, sit back, and tell the story to our loved ones:

Fame is multifaceted, oh yes she is! Although genetics may be of some help, if you're born a man for example, your ethnicity doesn't seem to play a role, especially today. Longevity is a tricky little friend to have. He may help you in the beginning, and in fact, he will show you the right way to go, but if you listen a little bit too closely to his adventurous speech of "trying new things!", then it may begin to hurt you. "The right dose of adventure", that's something we learned from him! It seems you can be around for a long time, but you need to be careful not to lose yourself, and always stay true to your roots. 

<span style="color: red;">(Ajouter texte avec conclusions des analyses de graphes, personas, et pays d'origines)</span>

## References