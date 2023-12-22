# A Tale of Acting Careers

The stories, visuals, and music in movies possess an ethereal quality, transporting us to different worlds and embarking us on emotional adventures, all within a couple of hours. However, behind every blockbuster lies the real essence: the people. These individuals - directors, writers, composers, and especially actors - are the hearts and minds of these artful creations that so profoundly impact us. Naturally, these artists, particularly actors, hold a special place in society, with the very best becoming some of the most recognized faces on the planet.

Have you ever wondered about the journeys of acting careers? The paths actors traverse to reach the pinnacle of cinema? We certainly have. Through the lens of data, we aim to unravel what constitutes a great acting career, how success in the film industry can be measured, and if there are strategies aspiring actors can employ to maximize their chances of fame.

For this exploration, we needed data. *A lot* of data. TThe cornerstone of our analysis is the CMU Movie Summary Corpus, encompassing over 42,000 movies, sourced from their Wikipedia pages as of 2012. To enhance our analytical capabilities, we also utilized freely available datasets from IMDb. The final piece of our data puzzle was the results of a paper that compiled the *personas* of several thousand characters, representing common character stereotypes.

In the end, this meant that we ended up with around 45'000 actors, with careers spanning from the early 20th century to 2012. 

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

Our dataset has a very varied set of genres. In fact, there are over 350 different genre categories!

<span style="color: red;">Ajouter plotly des genres les plus populaires, pas besoin d'être compliqué.</span>

### (ajouter analyse ici) + parler du nombre de genres (y'a un mec qui a joué 60 genres...)

### The IMDb Connection: Ratings and Audience Engagement

<span style="color: red;">Adjusted Box-Office, with respect to Number of Votes and Average Rating, celui de sim est carré</span>

- A striking trend in the past 50 years is the robust growth in both the number of movies and their box office revenues, affirming the rising prominence of cinema.
- There's a discernible increase in audience engagement, as evidenced by a higher number of votes correlating with increased box office and ratings. This trend suggests that more successful films not only earn more but also resonate more with viewers.
- Interestingly, films with lower ratings often see diminished box office returns and fewer votes, underscoring a link between a movie's quality, reach, and financial success.

The relationship between a film's quality and its reach is both intriguing and informative. It seems that the more a movie appeals to its audience, the more successful it becomes both critically and commercially.

With the setting now vividly laid out before us, we are ready to delve deeper into the story of cinema and acting careers.

## The Characters

In our tale, the characters are not just the protagonists of the movies but also the elements of our data that provide crucial insights. Let's introduce these characters, observing their actions and unraveling their secrets as our story unfolds.

### Supporting Characters: The Personas

| actor_name    | fameScore | persona | movie_name                               | release_date |
|---------------|-----------|---------|------------------------------------------|--------------|
| Gianni Russo  | 179.52    | 41.0    | The Godfather                            | 1972-03-15   |
| Sofia Coppola | 148.63    | 15.0    | The Godfather Part II                    | 1974-12-12   |
| Robert Webber | 145.13    | 18.0    | 12 Angry Men                             | 1957-04-10   |
| Chin Han      | 139.77    | 35.0    | The Dark Knight                          | 2008-07-16   |
| Hanna R. Hall | 139.07    | 2.0     | Forrest Gump                             | 1994-06-23   |
| William Alland| 137.29    | 10.0    | Citizen Kane                             | 1941-05-01   |
| Brigitte Helm | 131.34    | 34.0    | Metropolis                               | 1927-01-10   |
| Danny Lloyd   | 131.29    | 46.0    | The Shining                              | 1980-05-23   |
| Sala Baker    | 122.17    | 30.0    | The Lord of the Rings: The Fellowship... | 2001-12-10   |
| Christopher Lloyd| 119.07 | 17.0    | One Flew Over the Cuckoo's Nest          | 1975-11-19   |

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

- **Fame Over Time:** We envisioned that fame spikes with each movie release, then decays exponentially. We tried several ways to define it, and one way which we found compelling was to consider the last big movie that we can remember from this actor. For instance, Daniel Radcliffe was predominantly associated with *Harry Potter* for a considerable period. Under this framework, smaller films that don't significantly enhance an actor's fame beyond the impact of their previous major work (after accounting for decay) are not factored into the fame calculation.

Here's the fame score in action, exemplified by the career trajectory of Leonardo DiCaprio:

<span style="color: red;">fame Score Leonardo DiCaprio over the years, essayer d'avoir des chiffres plus lisibles et plus gros, le minimum d'overlap possible</span>

#### Some caveats...

While our fame score effectively measures an actor's success in the film industry, it's important to note its limitations. Real-world fame often extends beyond cinematic achievements, influenced by actors' off-screen lives. Our metric focuses on on-screen impact and might not capture the full spectrum of an actor's public image. It's also worth noting that gathering "social data" for the 100+ years of movies and actors we have would be extremely difficult. 

We believe that our metric is sufficiently accurate for our purposes, as "social" popularity and our fame score are not independent. A sharp increase in an actor's popularity in events outside their movies will have an impact on the next movie this actor plays, and the number of people tuning in (or voting) would be affected as well. 

We were unfortunately unable to get something other than number labels for each persona, and we didn't have time to manually "guess" what each of these clusters referred to. Our analyses were thus focused on non-specific analyses, such as the "persona diversity", which we will see later.

# The Plot

Finally, let's get into the crux of our story. We'll divide our plot into four distinct arcs: 

1. Understanding the fame score: general trends
2. Digging deep: career focus analysis
3. The influence of country of origin
3. What about networks?

Let's get into it!

## Arc 1. Understanding the fame score: general trends

In our quest to decipher the nuances of the fame score, we first explore general trends, examining the data from different perspectives to gain a holistic understanding.

### The Impact of Diversity on Fame

#### Gender Dynamics

<span style="color: red;">average fame ratio of genders</span>

Our analysis reveals a persistent "fame gap" between male and female actors. Despite societal progress in gender equality, this disparity remains evident in the industry, with male actors consistently holding a 20-30% edge in fame over the last century. The predominance of male main characters might partly explain this enduring gap.

#### Ethnicity 

<span style="color: red;">average fame by ethnicity</span>

Ethnic trends in fame showcase intriguing patterns:
- Asian/Middle Eastern actors experienced peaks in the 1920s and 1940s, possibly influenced by Bollywood's rise or wartime shifts in cinematic focus.
- Other ethnic groups have seen a gradual increase in fame, with a notable convergence in recent times, where it seems ethnic disparities are disappearing.

### Longevity and Fame: A Complex Relationship

#### Fame Score versus Career Longevity

<span style="color: red;">Mettre plot ".. since first movie", changer titre à un truc du style "Fame and longevity", x axis à "longevity". Tej la légende à droite.</span>

The relationship between fame and career length reveals a plateau after approximately 13-15 years. This graph also helped uncover the fun fact that some actors actually had a career spanning 80+ years, with a single one spanning 89 years! The actor in question is Milton Berle, born in 1908. A movie featuring a character played by him was released in 2003, one year after his death in 2002. Nevertheless, a hugely impressive longevity which is completely unmatched. 

### Concluding Insights of Arc 1

This first arc sheds light on historical trends in fame, the impact of diversity on success, and the complex interplay between fame and longevity. With these insights in hand, we are now poised to delve deeper into the nuances of the fame score and its implications in the next arc of our story.

## Arc 2. Digging Deep: Career Focus Analysis

### Exploring the Terrain of Career Diversity

In our continued exploration, we navigate the diverse landscape of cinema. Is there merit in versatility, or does specialization pave the path to fame? Let's delve into these questions.

#### Defining Our Terms
- **Genre Diversity:** The range of genres an actor has explored in their career. For multi-genre movies, we consider the top three genres to accurately represent films like "rom-coms."
- **Movie Diversity:** The total number of movies an actor has been a part of.
- **Persona Diversity:** The variety of different character types an actor has portrayed. 

#### Genre Versatility: A Path to Fame?

<span style="color: red;">fame score/genre div from genre_analysis.ipynb. Rajouter titre, peut-etre ajouter des confidence intervals comme simon?</span>

Somewhat surprisingly, our data seems to indicate that being a "genreventurer" correlates positively with fame! The median fame score seems to peak at a genre diversity of around 30. This suggests that actors benefit from branching out into various genres, seemingly challenging the notion of sticking to a single type of role. There is even an actor, <span style="color: red;">get actor name who played 60 genres</span>, the most adventurous of us all, who has played in movies with over 60 different genres! That means that he has played in over 1/6th of all recorded genres in our dataset (which as a reminder spans over 100 years and includes several tens of thousands of movies!).

#### Movie Diversity: Quality Over Quantity?

<span style="color: red;">fame score/movie div from genre_analysis.ipynb. Rajouter titre. peut-etre ajouter des confidence intervals comme simon</span>

Contrary to gerne diversity, it seems like being a "movieventurer" is not a great idea. While we may get good results initially, it appears that an increase in movie diversity has diminsihing returns on fame. This could be attributed to the compromise between quantity and quality or the involvement in smaller-scale projects with limited reach. 

#### Reconciling Genre and Movie Diversity

<span style="color: red;">mettre deuxième graphique plotly d'alex ici, avec genre diversity en x axis</span>

When isolating movie diversity, a very interesting pattern emerges: actors who focus on fewer genres within their filmography tend to have higher fame scores. This suggests that establishing a niche and excelling within it, and thus being possibly hired for movies with more prestige, budget, or more famous colleagues, can be more beneficial than a scattershot approach across many genres. 

### Persona focus (changer titre)

<span style="color: red;">insert persona analysis here</span>

Persona 

## Arc 3. The influence of country of origin

In this arc of our analysis, we examine the impact of a movie's country of origin on the fame of its actors. Our focus is on the top five countries in terms of movie production:

<table class="tg" style="undefined;table-layout: fixed; width: 500px">
<colgroup>
<col style="width: 164px">
<col style="width: 178px">
</colgroup>
<thead>
  <tr>
    <th class="tg-0lax">Country</th>
    <th class="tg-0lax"># of movies</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0lax">United States of America</td>
    <td class="tg-0lax">141'183</td>
  </tr>
  <tr>
    <td class="tg-0lax">India</td>
    <td class="tg-0lax">21'840</td>
  </tr>
  <tr>
    <td class="tg-0lax">United Kingdom</td>
    <td class="tg-0lax">12'908</td>
  </tr>
  <tr>
    <td class="tg-0lax">France</td>
    <td class="tg-0lax">9'663</td>
  </tr>
  <tr>
    <td class="tg-0lax">Japan</td>
    <td class="tg-0lax">4'797</td>
  </tr>
</tbody>
</table>

### Median Fame Score by Country

<span style="color: red;">plot fame score by country over time country analysis, le tout dernier seulement sur 30 ans</span>

In the last 30 years, somewhat unsurprisingly, American actors consistently exhibit the highest median fame scores. A notable exception is India, where actors' fame scores are significantly lower compared to their American counterparts, nearly six times less. This discrepancy could stem from IMDb's Western-centric data representation, potentially underrepresenting Bollywood's significant presence. Alternatively, it might reflect cultural differences in movie rating behaviors between Indian and Western audiences.

### Ethnicity and Country of Production: A Chi-Square Analysis

<span style="color: red;">[Insert contingency table from Chi-Square test results.]</span>

The Chi-Square test results reveal a strong correlation between actor ethnicity and the country of production. The majority of Asian actors are cast in Indian films, while American films display greater ethnic diversity. This finding highlights the regionalized nature of casting preferences and possibly indicates varying degrees of inclusivity in different film industries.

### Historical Fame Trends Across Countries

<span style="color: red;">[Insert plot of median fame score by country across the entire dataset.]</span>

This historical perspective unveils unique 'golden ages' in cinema. Japanese actors, for instance, reached peak fame during the early phases of its "Japanese economic miracle," reflecting the country's booming post-war economy. The 1920s marked a high point for Indian actors, while French cinema shows a notable decline over time. However, caution is warranted when interpreting older data due to its relative scarcity and potential inaccuracies.

As we conclude this arc, we're reminded of cinema's dynamic nature and its reflection of broader social and economic landscapes. These findings illustrate how fame in the film industry is not only a result of individual talent and effort but also deeply influenced by the cultural, historical, and economic context of each country.

## Arc 4. What about networks?

As we have been strolling through our dataset, we have looked at a lot of different metrics, and we have explored a lot of different angles. However, there is one thing that we have thus far not mentioned, which is absolutely key to understanding careers, and fame: people! So far, all of our analyses have been network-agnostic, but we know this is not how the real world works. Our next, and final arc, will bring us through many hardships, as the plots can get pretty gnarly over there! However, we think that will also teach us a whole lot, and could be one of the keys to unlocking the secrets to fame!

Let's quickly get into it, jumping straight into our first topic: languages. 

### Connections: an overview

Our first order of business is to get a good idea of what the situation is. What is this strange new world that we're setting foot in? The first approach that we tried was to look at the graph of connections between actors (a link being defined as a movie played together), color-coded by language:

<span style="color: red;">network by language plot de remi. Idealement ajouter les autres components non connectés pour montrer les distributions de tout notre dataset, et de pouvoir en dire plus</span>

We loved this graph, as it quite clearly shows that the cinema industry, for better or for worst, is very segregated between languages. There is very little collaboration between what is most likely Hollywood and Bollywood, as evidenced by the very few weak links between the two communities.

As a next step, we are very interested in looking at centrality. Due to the nature of our network, the centrality would be very heavily biased toward those weak links between Hollywood and Bollywood, which would also hold no guarantees with respect to their fame. <span style="color: red;">ajouter analyse des weak links?</span>

Having confirmed that the weak links between Hollywood and Bollywood are not necessarily special in our analysis of their fame score, we thus decided to focus on the actors of English movies from here on out. 

### Centrality: is it fame?


### Making communities


### Who are the most famous actors in history?

Now that we better understand the tales of acting careers, let's take a look back. A look back at all the previous actors, and let's see which of them were the most famous, the true icons of their time. Below is the evolution of the top 10 most famous actors through the ages.

<span style="color: red;">Ajouter raceplot de simon, mais changer (si possible): les barres bougent physiquement et pas juste les couleurs, pour voir la diff entre les années plus facilement. si possible, mettre les noms à gauche des barres pour pas qu'ils bougent tout le temps.</span>

Just for fun, we can also look at the 5 actors with the highest fame scores of all time. Here they are:

<span style="color: red;">5 acteurs les plus connus, avec leur nom, leur fame score, et l'année du pic</span>

# A look back: what did we learn? (REWORD)

Our tale seems to have reached its end. After having travelled through the ages with historical data, and have explored the diverse worlds of genres and diversity, passing through the vast expanse of networks, we can now finally rest, sit back, and tell the story to our loved ones:

Fame is multifaceted, oh yes she is! Although genetics may be of some help, if you're born a man for example, your ethnicity doesn't seem to play a role, especially today. Longevity is a tricky little friend to have. He may help you in the beginning, and in fact, he will show you the right way to go, but if you listen a little bit too closely to his adventurous speech of "trying new things!", then it may begin to hurt you. "The right dose of adventure", that's something we learned from him! It seems you can be around for a long time, but you need to be careful not to lose yourself, and always stay true to your roots. 

<span style="color: red;">(Ajouter texte avec conclusions des analyses de graphes, personas, et pays d'origines)</span>

## References