# A Tale of Acting Careers

The stories, visuals, and music in movies possess an ethereal quality, transporting us to different worlds and embarking us on emotional adventures, all within a couple of hours. However, behind every blockbuster lies the real essence: the people. These individuals - directors, writers, composers, and especially actors - are the hearts and minds of these artful creations that so profoundly impact us. Naturally, these artists, particularly actors, hold a special place in society, with the very best becoming some of the most recognized faces on the planet.

Have you ever wondered about the journeys of acting careers? The paths actors traverse to reach the pinnacle of cinema? We certainly have. Through the lens of data, we aim to unravel what constitutes a great acting career, how success in the film industry can be measured, and if there are strategies aspiring actors can employ to maximize their chances of fame.

For this exploration, we needed data. *A lot* of data. TThe cornerstone of our analysis is the CMU Movie Summary Corpus, encompassing over 42,000 movies, sourced from their Wikipedia pages as of 2012. To enhance our analytical capabilities, we also utilized freely available datasets from IMDb. The final piece of our data puzzle was the results of a paper that compiled the *personas* of several thousand characters, representing common character stereotypes.

Together, we will dive into the realms of Hollywood, Bollywood, and beyond, uncovering not just the narratives actors portray on screen, but also the stories of their careers. We will explore their rise to fame, their networks, and the evolution of their roles over time!

# Let's begin our story by understanding the data...

## The Setting: Historical Trends in Cinema

Let's begin by immersing ourselves in the evolution of cinema. Our data, meticulously cleaned and merged, offers a panoramic view of the film industry's growth and transformation over the years. Before diving into the narrative, let's first grasp the landscape that our data reveals. 

### The Rise of Cinema: A Journey Through Time

<span style="color: red;">Ajouter plot du nombre de films par année avec notre data final.</span>

From silent films to modern blockbusters, cinema has witnessed an extraordinary rise in both the number and diversity of movies. Our graph vividly illustrates this ascent, highlighting more than a tenfold increase in annual movie production since the early 20th century. This growth not only signifies the rising popularity of cinema but also its evolution as an art form and a business.

### The Financial Picture: Box Office Evolution

<span style="color: red;">average inflation-adjusted box office par année, très simple</span>

The surge in the number of movies is mirrored by a parallel increase in the industry's financial inflow. The inflation-adjusted box office revenue chart illustrates the escalating economic stakes in cinema, showcasing its journey from modest beginnings to a lucrative global industry.

### Genre Trends: The Popular Threads of Storytelling

<span style="color: red;">Ajouter plotly des genres les plus populaires, pas besoin d'être compliqué.</span>

### (ajouter analyse ici) + parler du nombre de genres (y'a un mec qui a joué 60 genres... c'est quel pourcentage de tous les genres répertoriés par le dataset??)

### The IMDb Connection: Ratings and Audience Engagement

<span style="color: red;">Adjusted Box-Office, with respect to Number of Votes and Average Rating, celui de sim est carré</span>

- A striking trend in the past 50 years is the robust growth in both the number of movies and their box office revenues, affirming the rising prominence of cinema.
- There's a discernible increase in audience engagement, as evidenced by a higher number of votes correlating with increased box office and ratings. This trend suggests that more successful films not only earn more but also resonate more with viewers.
- Interestingly, films with lower ratings often see diminished box office returns and fewer votes, underscoring a link between a movie's quality, reach, and financial success.

The relationship between a film's quality and its reach is both intriguing and informative. It seems that the more a movie appeals to its audience, the more successful it becomes both critically and commercially.

With the setting now vividly laid out before us, we are ready to delve deeper into the story of cinema and acting careers.

## The Characters

In our tale, the characters are not just the protagonists of the movies but also the elements of our data that provide crucial insights. Let's introduce these characters, observing their actions and unraveling their secrets as our story unfolds.

### Supporting Characters: The Personas (CHANGER)

<span style="color: red;">tableau avec les persona et les acteurs les plus connus dans cette catégorie (ou autre graphique que vous pouvez trouver intéressant pour introduire les personas...)</span>

The personas, our supporting characters, play a pivotal role in the narrative. They represent the diverse roles and character stereotypes actors embody. Here, we introduce them with a visualization showing the most renowned actors for each persona. This preliminary glimpse sets the stage for a deeper analysis of their influence.

### The Main Character: The Fame of Actors
The central theme of our story is the *fame* of actors. But how do we quantify such an intangible concept? How can we assign a numerical value to an actor's popularity at any given point in their career?

#### The Fame Score: A Quantitative Measure of Popularity
Crafting the fame score involved synthesizing various elements:

- **Viewer Reach:** We conjectured that the number of people watching an actor's movies is a critical component of their 'fame' at any moment.
- **Public Perception:** The average rating of the movies an actor has appeared in is incorporated to reflect their 'popularity,' tying fame to the perceived quality of their work.
- **Temporal Adjustment:** To account for the explosive growth in cinema's reach over time, we introduced a factor inversely proportional to the movie's release year, ensuring historical actors aren't overshadowed.
- **Role Significance:** Recognizing that leading roles contribute more to an actor's fame than supporting roles, we added a 'bonus' for main characters.

These components culminate in an 'instantaneous' fame score, reflecting the impact of individual movies on an actor's fame at specific points in time. However, to fully capture fame, we must consider its temporal aspect.

- **Fame Over Time:** We envisioned that fame spikes with each movie release, then decays exponentially. By summing the residual fame from past roles, we arrive at the total 'fame score'.

Here's the fame score in action, exemplified by the career trajectory of Leonardo DiCaprio:

<span style="color: red;">fame Score Leonardo DiCaprio over the years, essayer d'avoir des chiffres plus lisibles et plus gros, le minimum d'overlap possible</span>

### Some caveats...

The fame score that we have calculated is a great measure of how well the movies an actor has played in have performed, as well as estimating the residual effects of time and the individual contribution the actor has made to the movie. However, in real life a lot of fame is also driven by what happens outside the silver screen. Unfortunately, we did not have time to look into other sources of data which might have included "social" popularity, and including such a metric would have been very difficult to track over the 100 years or so that our current data spans (the way we talk about our favorite actors has changed enormously over this time period). 

However, we believe that our metric is sufficient to be a relatively accurate proxy for actual fame (after all, the bottom line for most actors, as an average, is how good your movies are), as well as being more accurate to proxy the fame within the industry, which is perhaps more relevant to any aspiring actor, and more indicative of whether you are remembered as an icon of cinema or of controversy. 

<span style="color: red;">ajouter d'autres caveats ici par rapport aux personas, ou autre compromis techniques qu'on a du faire</span>

#### Caveats of the Fame Score
While our fame score effectively measures an actor's success in the film industry, it's important to note its limitations. Real-world fame often extends beyond cinematic achievements, influenced by actors' off-screen lives. Our metric focuses on on-screen impact and might not capture the full spectrum of an actor's public image. It's also worth noting that gathering "social data" for the 100+ years of movies and actors we have would be extremely difficult.

We believe that our metric is sufficiently accurate for our purposes, as "social" popularity and our fame score are not independent. A sharp increase in an actor's popularity in events outside their movies will have an impact on the next movie this actor plays, and the number of people tuning in (or voting) would be affected as well. 

# The Plot

Finally! Let's get into the crux of our story. We'll divide our plot into 3 arcs: 

1. Understanding the fame score: general trends
2. Digging deep: career focus and country of origin analysis
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