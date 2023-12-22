# A Tale of Acting Careers

The stories, visuals, and music in movies possess an ethereal quality, transporting us to different worlds and embarking us on emotional adventures, all within a couple of hours. However, behind every blockbuster lies the real essence: the people. These individuals - directors, writers, composers, and especially actors - are the hearts and minds of these artful creations that so profoundly impact us. Naturally, these artists, particularly actors, hold a special place in society, with the very best becoming some of the most recognized faces on the planet.

Have you ever wondered about the journeys of acting careers? The paths actors traverse to reach the pinnacle of cinema? We certainly have. Through the lens of data, we aim to unravel what constitutes a great acting career, how success in the film industry can be measured, and if there are strategies aspiring actors can employ to maximize their chances of fame.

For this exploration, we needed data. *A lot* of data. TThe cornerstone of our analysis is the CMU Movie Summary Corpus, encompassing over 42,000 movies, sourced from their Wikipedia pages as of 2012. To enhance our analytical capabilities, we also utilized freely available datasets from IMDb. The final piece of our data puzzle was the results of a paper that compiled the *personas* of several thousand characters, representing common character stereotypes.

In the end, this meant that we ended up with around 45'000 actors, with careers spanning from the early 20th century to 2012. 

Together, we will dive into the realms of Hollywood, Bollywood, and beyond, uncovering not just the narratives actors portray on screen, but also the stories of their careers. We will explore their rise to fame, their networks, and the evolution of their roles over time!

# Let's begin our story by understanding the data...

## The Setting: Historical Trends in Cinema

Let's begin by immersing ourselves in the evolution of cinema. Our data, which we meticulously cleaned and merged from all the aforementioned data sources, offers a panoramic view of the film industry's growth and transformation over the years. Before diving into the narrative, let's first grasp the landscape that our data reveals. 

### The Rise of Cinema: A Journey Through Time

<span style="color: red;">Ajouter plot du nombre de films par année avec notre data final.</span>

From silent films to modern blockbusters, cinema has witnessed an extraordinary rise in both the number and diversity of movies. Our graph vividly illustrates this ascent, highlighting more than a tenfold increase in annual movie production since the early 20th century. This growth not only signifies the rising popularity of cinema but also its evolution as an art form and a business.

### The Financial Picture: Box Office Evolution

<span style="color: red;">average inflation-adjusted box office par année, très simple</span>

The surge in the number of movies is mirrored by a parallel increase in the industry's financial inflow. The inflation-adjusted box office revenue chart illustrates the escalating economic stakes in cinema, showcasing its journey from modest beginnings to a lucrative global industry.

### Genre Trends: The Popular Threads of Storytelling

Our dataset offers a bird's eye view of cinematic genres, showcasing an impressive array of over 350 distinct categories. This diversity reflects the rich tapestry of storytelling in the film industry. Let's take a closer look at the most prevalent genres.

<span style="color: red;">[Insert plotly visualization of the top 10 most popular genres.]</span>

As the data reveals, Drama, Comedy, Romance, and Action Thrillers dominate the cinematic landscape. This aligns with popular audience preferences, suggesting that these genres have a broad, enduring appeal. Their prevalence speaks to universal themes and storytelling styles that resonate across cultures and time periods.

An interesting observation is the significant presence of black-and-white movies within the dataset. This not only highlights the historical depth of our data but also provides a window into the evolution of the film medium. This genre analysis paints a vivid picture of the film industry's trends and shifts over the years. It underscores the dynamic nature of cinematic preferences and the industry's response to evolving tastes and societal changes.

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

| actor_name       | fameScore | persona | movie_name                   | release_date |
|------------------|-----------|---------|------------------------------|--------------|
| Marlon Brando    | 215.42    | 5.0     | The Godfather                | 1972-03-15   |
| James Caan       | 206.97    | 2.0     | Cinderella Liberty           | 1973-01-01   |
| Bob Gunton       | 199.79    | 18.0    | The Shawshank Redemption     | 1994-09-10   |
| Morgan Freeman   | 195.00    | 9.0     | Outbreak                     | 1995-03-06   |
| Diane Keaton     | 178.29    | 49.0    | Play It Again, Sam           | 1972-05-04   |
| Robert Duvall    | 178.09    | 30.0    | The Great Northfield Minnesota Raid | 1972-05-12 |
| Al Lettieri      | 172.93    | 41.0    | The Getaway                  | 1972-12-13   |
| Heath Ledger     | 167.73    | 35.0    | The Dark Knight              | 2008-07-16   |
| Larry Brandenburg| 166.31    | 29.0    | Daggers                      | 1994-09-18   |
| Bruce Willis     | 164.93    | 10.0    | Color of Night               | 1994-08-19   |

The concept of personas in film, drawn from the 2013 paper "Learning Latent Personas of Film Characters," offers a fascinating lens through which we can view actors' roles. These personas encapsulate a range of character stereotypes and archetypes that actors bring to life on screen. Our table showcases a selection of renowned actors alongside their notable personas, fame scores, and corresponding movie roles. 

This data doesn't just quantify their fame; it also reveals the breadth and depth of their acting range. For instance, the versatility of Marlon Brando in 'The Godfather' or the intense performance of Heath Ledger in 'The Dark Knight' highlight the varied personas actors adopt to captivate audiences.

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

### Concluding Insights

This first arc sheds light on historical trends in fame, the impact of diversity on success, and the complex interplay between fame and longevity. With these insights in hand, we are now poised to delve deeper into the nuances of the fame score and its implications in the next arc of our story.

## Arc 2. Digging Deep: Career Focus Analysis

### Exploring the Terrain of Career Diversity

In our continued exploration, we navigate the diverse landscape of cinema. Is there merit in versatility, or does specialization pave the path to fame? Let's delve into these questions.

#### Defining Our Terms
- **Genre Diversity:** The range of genres an actor has explored in their career. For multi-genre movies, we consider the top three genres to accurately represent films like "rom-coms."
- **Movie Diversity:** The total number of movies an actor has been a part of.
- **Persona Diversity:** The variety of different character types an actor has portrayed. 

### Genre Versatility: A Path to Fame?

<span style="color: red;">fame score/genre div from genre_analysis.ipynb. Rajouter titre, peut-etre ajouter des confidence intervals comme simon?</span>

Somewhat surprisingly, our data seems to indicate that being a "genreventurer" correlates positively with fame! The median fame score seems to peak at a genre diversity of around 30. This suggests that actors benefit from branching out into various genres, seemingly challenging the notion of sticking to a single type of role. There is even an actor, <span style="color: red;">get actor name who played 60 genres</span>, the most adventurous of us all, who has played in movies with over 60 different genres! That means that he has played in over 1/6th of all recorded genres in our dataset (which as a reminder spans over 100 years and includes several tens of thousands of movies!).

### Movie Diversity: Quality Over Quantity?

<span style="color: red;">fame score/movie div from genre_analysis.ipynb. Rajouter titre. peut-etre ajouter des confidence intervals comme simon</span>

Contrary to gerne diversity, it seems like being a "movieventurer" is not a great idea. While we may get good results initially, it appears that an increase in movie diversity has diminsihing returns on fame. This could be attributed to the compromise between quantity and quality or the involvement in smaller-scale projects with limited reach. 

### Reconciling Genre and Movie Diversity

<span style="color: red;">mettre deuxième graphique plotly d'alex ici, avec genre diversity en x axis</span>

When isolating movie diversity, a very interesting pattern emerges: actors who focus on more genres within their filmography tend to have higher fame scores. This suggests that diversifying the types of movies you play, thus being able to appeal to a wider audience, and possibly get hired for movies with more budget, or possibly more famous colleagues, is a good move for your career! Indeed, this trend seems intact up until very high numbers of movies played, where the data becomes more sparse, and less generalizable.

The aforementioned personas, which represent popular character tropes or roles, are a very interesting piece of information. We decided to analyse the persona diversity in order to better understand how 

### The Impact of Persona Diversity

<span style="color: red;">insert persona analysis here</span>

Our findings on persona diversity unveil a compelling narrative: actors who diversify their character types tend to have higher fame scores. This suggests that the ability to adapt to various personas is not just a testament to an actor's range and skill but also a strategic career move that can enhance their popularity and fame. 

Actors who successfully navigate different personas appear to create a more lasting and impactful presence in the industry. This versatility allows them to connect with a wider audience, participate in a broader range of projects, and potentially collaborate with more renowned directors and co-stars. 

### Concluding Insights

In essence, our exploration in this arc reveals that versatility, be it in genre choice or persona adoption, plays a significant role in an actor's fame trajectory. While there is a delicate balance between quality and quantity, our analysis suggests that diversifying one's career with thoughtful choices in genres and roles can lead to greater acclaim and recognition.

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

### Concluding Insights: The Global Fabric of Cinematic Fame

As this arc of our analysis draws to a close, several key insights into the influence of country of origin on actors' fame crystallize:

1. **American Dominance:** The sustained high fame scores of American actors underscore the overpowering presence of Hollywood in the global cinematic landscape, reaffirming its role as a central hub of movie production and star-making.

2. **Ethnic Casting Patterns:** The Chi-Square analysis illuminates strong ties between actors' ethnicity and the country of production. This underscores the diversity in casting practices across different film industries, with American cinema showing a broader ethnic range than others.

3. **Historical Contexts:** The shifts in fame scores across different eras, such as the peak periods for Japanese and Indian actors, reveal how cinema's evolution is intertwined with historical and economic developments in each country.

This arc emphasizes the intricate interplay between fame, culture, and geography in the film industry, illustrating how an actor's success is deeply rooted in the broader socio-cultural fabric of their country of origin.

## Arc 4. What about featurings?

As we have been strolling through our dataset, we have looked at a lot of different metrics, and we have explored a lot of different angles. However, there is one thing that we have thus far not mentioned, which is absolutely key to understanding careers, and fame: people! So far, all of our analyses have been network-agnostic, but we know this is not how the real world works. Our next, and final arc, will bring us through many hardships, as the plots can get pretty gnarly over there! However, we think that will also teach us a whole lot, and could be one of the keys to unlocking the secrets to fame!

Let's quickly get into it, jumping straight into our first topic: featurings with famous actors. 

### Connections: an overview

Our first order of business is to get a good idea of what the situation is. What is this strange new world that we're setting foot in? The first approach that we tried was to look at the connections between actors (a link being defined as a movie played together):
The effect, we would like to show light on is wether featuring with a famous actor improves your own fame or not. This is an information of high value for any actro in need of recognition ! The easy approach simply consist of finding the 100 most famous actors for each year and split all our featuring connection in two groups. The first group -control features in films with lesser known actors than the second one -treated. We observe that the treated group has a fame increase of in average 5 times the one of the control group, which is huge. This effect is statistically significant as it is backed by a t-test giving a p-value of 0. You might think that this is enough for an actor but we will dig deeper in the data as matching should be performed to ensure a real effect and the absense of confounder effect under the naive model. Actors may be releived to hear that after matching, the effect is still present yet less strong, but more importantly statistically significant with a p-value of 7e-10.
<span style="color: red;">graph feats after matching</span>

Then, we may look at feats from another point of view. That is network analysis, opening a whole new world of possibilities. We construct a network consisting of actors as nodes and films as edges. The main component of the graph is strangely composed of two main clusters. Our initial thought are that these represent two worlds of cinema : Hollywood and Bollywood. Indeed, seeing the following figure, we observe that actors whose languages are spoken in India constitutes the smaller cluster while English speaking actors are in the other cluster with some French speaking ones far from home. 
<span style="color: red;">network by language plot de remi. Idealement ajouter les autres components non connectés pour montrer les distributions de tout notre dataset, et de pouvoir en dire plus</span>

This separation in the network poses a problem as for computing centralities, actors bonding Bollywood and Hollywood will be assigned the highest centralities, especially betweenness centrality. As we cannot ensure that such actors are famous but instead are well placed in the network,  we solve this issue by restricting ourselves to Hollywood with only English speaking actors.
<span style="color: red;">graph betweeness bolly holly</span>

Then we compute the betweenness, Katz and closeness centralities of actors in Hollywood. No surprise, famus actors such as Robert De Niro, Morgan Freeman, Matt Damon, Christopher Walken, etc are assigned the highest centralities. This might suggest a correlation between fame and centrality, which intuitivey makes quite some sense. Yet, performing a correlation analysis between fames and centralities in the correlation matrix hereunder, it seems that fame is not especially linked with centrality. 
<span style="color: red;">correlation matrix fame centrality</span>

It could be then that even Hollywood is composed of communities where actors bonding such may have bigger centralities. Using the Louvain method, which groups together nodes so as to maximize cluster coefficients for nodes, we may extract several communities. Those communities are linked by weak ties as shown in the subsequent figure. Some Louvain communities do share many connections, yet others do not seem to make film with many other communities. This is becoming interesting for any actor willing to join one as they might not share the same fame distribution, some may me composed of established actors while other be carreer boosters. The communities seem well formed as the cast of Harry Potter saga are all in the same community.
<span style="color: red;">louvain weak ties</span>

The following plots show that communities do not all share the same average of fame score. Indeed some are composed of more famous actors while others seem less interesting for an unknown actor willing to increase its fame fast. This bar analysis with confidence intervals is backed by oneway ANOVA testing where we test if the mean of fame and fame increase are the same for each Louvain community. Using such method, it turns out that fames in communities do not share the same means. Thus, an already somewhat famous actor probably should aim at featuring as much as possible with actors from that community to increase its fame and ensure a long time presence in the industry. The p-values are 0 for the fame means and 0.057 for the fame increase means meaning that we cannot reject the null hypothesis in the later.

Finally, we may be interested in wether actors within a community are better of playing with their community instead of reaching other horizons. For this, we perform a second matching where the treatment effect is to feature in a film with someone from your community with no regard on the fame of the two actors. Without any matching the effect is positive and statistiaclly significant which is promising and after matching on observable covariates, it turns out that the relation is still positive and statistically significant at the 0.05 level. As a conclusion, actors perform better and gain more fame when playing with actors from the same community.

With this work done, the arc on feats ends, sadly, however any aspiring actor should aim at featuring with actors as famous as possible so as to bring light on their talent. Moreover, joining certain communities ensure more fame than others and featuring with actors from the same community provides more fame increases to any actor.

# A look back: what did we learn? (REWORD)

Our tale seems to have reached its end. After having travelled through the ages with historical data, and have explored the diverse worlds of genres and diversity, passing through the vast expanse of networks, we can now finally rest, sit back, and tell the story to our loved ones:

Fame is multifaceted, oh yes she is! Although genetics may be of some help, if you're born a man for example, your ethnicity doesn't seem to play a role, especially today. Longevity is a tricky little friend to have. He may help you in the beginning, and in fact, he will show you the right way to go, but if you listen a little bit too closely to his adventurous speech of "trying new things!", then it may begin to hurt you. "The right dose of adventure", that's something we learned from him! It seems you can be around for a long time, but you need to be careful not to lose yourself, and always stay true to your roots. 

<span style="color: red;">(Ajouter texte avec conclusions des analyses de graphes, personas, et pays d'origines)</span>

# A Look Back: Key Insights from Our Journey

As our cinematic odyssey concludes, we pause to reflect on the rich tapestry of insights we've gathered. This journey through data has not only been a voyage through the history and mechanics of cinema but also a deeper understanding of what molds an actor's fame.

Fame, as we've discovered, is a complex character shaped by a myriad of factors. Gender, while historically influential, is gradually making way for a more inclusive landscape where ethnicity, intriguingly, seems to play a diminishing role in today's diverse cinematic world. Longevity, akin to a seasoned guide, offers its wisdom but warns against the perils of over-adventure. The ideal path, it seems, lies in a balanced exploration of new opportunities without straying too far from one's strengths.

Our delve into personas revealed the strategic advantage of versatility. Actors who skillfully navigate a spectrum of characters not only showcase their artistic range but also enhance their appeal and relevance across diverse audiences and eras. 

From the global perspective, the dominance of American cinema stands undisputed, yet the rich cultural nuances of each country, from the golden eras of Japanese cinema to the distinctive vibrancy of Bollywood, contribute uniquely to the global narrative of fame.

In essence, our exploration has illuminated the many faces of fame in the film industry. It's a story of evolution, adaptation, and the constant interplay between personal artistry and the broader cultural and historical forces at play. As we share these insights, we celebrate not just the data and its revelations, but also the enduring magic and influence of cinema in shaping our perceptions and dreams.


## References