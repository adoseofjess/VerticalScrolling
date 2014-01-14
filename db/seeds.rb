# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: "guest", password: "helloworld")

Course.create(title: "The Guide to Wine for Beginners", description: "Wine is more than just a drink; it’s a lifestyle, a survey into history, a gastronomic adventure, a study in farming and a way to explore different cultures. But with so many different angles to approach wine, how do you get started?
Fortunately, there are only a few basic techniques to learn as well as some common wine knowledge. With a little practice you will be over the hump of being a rudimentary wine ‘dabbler’ to becoming an upstanding wino, capable of ordering wine like a pro. The wine for beginners course has the answers to your questions.")

Lesson.create(title: "How Wine is Made", locked: false, course_id: 1, introduction: "Everyone knows that wine is fermented grape juice, but the process goes so much deeper than that. While every winemaker employs elements of their own style in the process, here we show the basic process that all vintners follow.")

Sublesson.create(title: "Grapes Are the Foundation", body: "There is a simple truth to just how important the right grapes are to the process: you simply can’t make a good wine with bad grapes. This is why every winemaker focuses on the fruit first. The key is achieving the right degree of ripeness. A little bit either way can drastically affect the quality of the wine. Winemakers have to consider many factors, such as weather, into knowing when grapes are truly ready. It’s hard work but, when the fruit is just right, winemakers are rewarded for their patience and dedication.", lesson_id: 1)

Sublesson.create(title: "Crush the Grapes", body: "Today, the crushing process is normally completed by machine. Actually, crushing can be a bit of a misnomer. You may be thinking of someone trying to squeeze every ounce of juice out of a grape. This is far from the truth in winemaking. Instead, the crush splits the skin of the grape and gives the natural sugars on the inside of the grape to meet with the yeast found on the grapes skin. It is the combination of the yeast and the sugar which produces the alcohol for a wine.

At this stage, the difference between red wine and white wine is made. All juice inside of a grape is clear; it is actually the coloring of the skin that makes a wine red. If the wine is destined to be a white, the skins are removed prior to the crush. Different winemakers employ slightly different methods of crush to get the wine the want, including how much juice the crush should yield, which affects the juice and, later, the taste of the wine.", lesson_id: 1)

Sublesson.create(title: "Fermentation: When Grape Juice Becomes Wine", body: "As mentioned above, it is the meeting of yeast and sugar that creates alcohol. Specifically, the process of fermentation is the yeast converting the sugars to alcohol. While some wines use yeast that is natural to the grape skin, others will add different strains of yeast, called inoculation, to get a different effect for their wine.

The method in which a wine is fermented showcases a lot about the style of a winemaker. For instance, the choice of stainless steel tanks or oak barrels for fermentation can greatly alter the taste of the resulting wine. In addition, the length of the fermentation will alter the final product. Other variations on the fermentation process include the temperature at which the wine is fermented (reds normally ferment at a higher temperature than whites) and the yeast used. Simply put, fermentation is where the winemaker starts to implement their vision of what their wine should taste like.", lesson_id: 1)

Sublesson.create(title: "The Finishing Touches: Filtration and Clarification", body: "Once a wine is fermented, it is far from a finished product. Often, remnants from the winemaking process remain which need to be cleaned up and handled to make a palatable product for the consumer. One ingenious technique is using egg whites to bind some of the particles together and weigh them down, making them easier to separate from the wine. This is called clarification. Lastly, filtration occurs to take the wine from a cloudy, particle-filled liquid to a clear and beautiful liquid that consumers expect.", lesson_id: 1)

Sublesson.create(title: "Bottling & Final Aging", body: "At this point, the wine is ready to be bottled. Today, wines are bottled mechanically, using bottling lines to make the process quicker and easier. Bottles are filled slowly and then a gas, either nitrogen or carbon dioxide, is released to displace any remaining oxygen that can age the wine. The bottle is then topped with either a modern, high tech screw cap or a traditional cork, based on the preference of the winemaker and it is ready to go! Some wines will be released for consumption immediately, while others will be subjected to additional bottle aging. Again, this is up to the discretion of the winemaker in their goal of creating the wine they envision.", lesson_id: 1)

Quiz.create(lesson_id: 1)

Question.create(quiz_id: 1, body: "What is the key to picking good grapes for wine?")

Answer.create(question_id: 1, body: "right degree of ripeness", correct: true)
Answer.create(question_id: 1, body: "right temperature")
Answer.create(question_id: 1, body: "right color")
Answer.create(question_id: 1, body: "right location")

Question.create(quiz_id: 1, body: "What is clarification?")

Answer.create(question_id: 2, body: "filtering the wine product")
Answer.create(question_id: 2, body: "using egg whites to bind some of the wine particles together", correct: true)
Answer.create(question_id: 2, body: "heating the finished wine product")
Answer.create(question_id: 2, body: "changing the coloring of the wine")

Lesson.create(title: "The Tasting Process", locked: false, course_id: 1, introduction: "How to taste wine seems simple enough - let us show you how to get the most out of every sip! There are four parts to the tasting process – viewing, agitating, smelling and tasting. I’m assuming you have a clean, clear glass with which you can easily swirl the wine. It’s also nice to have a glass with a stem that makes the glass comfortable to hold, you do not want to touch the glass much as the heat from your hands will transfer to the wine.")

Sublesson.create(title: "View", body: "The first part of the process involves using your eyes. Simply hold the glass at an angle against a white background. If you are viewing a red wine then you should be seeing a vibrant and clear color. For whites you should be seeing a lucid and clear color. If you see any cloudiness or discoloration (brownish, grayish) then this could be indicative of a wine defect.", lesson_id: 2)

Sublesson.create(title: "Swirl", body: "The action of swirling the wine causes the wine to become agitated by oxygen, releasing several aromas present in the wine. If your wine is young then you want to agitate it more, but if it’s a bit aged then you want to agitate it delicately.", lesson_id: 2)

Sublesson.create(title: "Smell", body: "This is one of my favorite parts. Bury your nose into the glass - as much as possible without getting it wet! – and take a nice long whiff. Now take a moment and let your olfactory work. You should be able to identify a few of the aromas, but if you don’t then don’t hesitate to repeat the process. Don’t be shy about it either, let yourself identify what you sense as an aroma and have fun with it! Younger and bolder wines will have strong aromas, while older wines will be less obtrusive and subtle.", lesson_id: 2)

Sublesson.create(title: "Taste", body: "Now let’s get down to business. Take a nice sip of the wine, filling your mouth about half full, and swish it around. Multiple things happen at this point. First, your olfactory is working again, getting those same aromas from the smelling process and more. Second, your palate is gaining a full impression of the wine. Third, you’re considering whether to spit or swallow. I like to swallow (stay focused!). If you decide to swallow then pay attention to how it feels when the wine goes down your throat. If you feel it as warm then the alcohol content is high in this wine. Some wines have significantly higher levels of alcohol such as Zinfandel, or even more so, Port. The wine should be full of flavor, represented by all elements of wine – fruit, tannin, and acid – in balance and should be void of unpleasant tastes, which we’ll discuss later.

Another option you have while going through this process is using a tasting note to aid you and to help for remembering later what you thought about a particular wine.", lesson_id: 2)

Sublesson.create(title: "Wine Defects", body: "Defective wines come from problems in winemaking or storage. The most common defect is corked wine. This occurs when mold in the cork contaminates the wine. This doesn’t happen as often as it used to since producers now have advanced technology. However, it is said that 3 out of every 100 bottles is corked. The true tell tale sign of a corked wine is the unmistakable smell of wet cardboard.

Another defect that can occur is oxidization. Exposing wine to air for too long will oxidize the wine, making it lose its original bright color - making it brownish and dull - and leaving it tasting like a sour apple.

Vinegary wine is also a possibility. If you come across this do not bother tasting this wine, just toss it out.

One last thing you should be aware of when drinking wine is sulfur. Sulfur is present in wine in small amounts as it is used in winemaking as a sterilizing agent and antioxidant. A small percentage of the population is allergic to sulfur; if you are one of those, then you should probably not drink wine.", lesson_id: 2)

Quiz.create(lesson_id: 2)

Question.create(quiz_id: 2, body: "The first part of the process involves using what?")

Answer.create(question_id: 3, body: "your eyes", correct: true)
Answer.create(question_id: 3, body: "your hands")
Answer.create(question_id: 3, body: "your mouth")
Answer.create(question_id: 3, body: "your nose")

Question.create(quiz_id: 2, body: "What is the most common defect for wine?")

Answer.create(question_id: 4, body: "overheated wine")
Answer.create(question_id: 4, body: "corked wine", correct: true)
Answer.create(question_id: 4, body: "too old")
Answer.create(question_id: 4, body: "wrong type of grapes")

Lesson.create(title: "Styles of Red Wine", locked: true, course_id: 1, introduction: "Although wine tasting is very much subjective, there are general tastes that can be commonly shared and understood. In the following section I will take you through some of the general concepts on red wine styles. Reds can range from great bold and tannic wines that require aging, to silky and smooth young wines. To easily differentiate between Red wine styles, we can separate them into four categories — Bordeaux, Burgundy, Juicy and Warm & Spicy.")

Sublesson.create(title: "Bordeaux", body: "Bordeaux style wines are very popular and can be greatly diverse.  On one end of the spectrum you will find velvety Merlot-based wines and on the opposite end you will find bold Cabernet-based wines.  We can find these styles not only from France, but also from California and Australia.  The Merlot-based style can be matched with white meats and fish, while the Cabernet-based style is better matched with roasts, lamb or beef.", lesson_id: 3)

Sublesson.create(title: "Burgundy", body: "Burgundy style wines come from the Pinot Noir grape.  The most sensual and beguiling of all red wines, the best Pinot Noirs are from Burgundy, but California, Oregon and New Zealand have all done wonders with this difficult grape. Though Pinot Noir appears in many different styles, its hallmarks are seductive scents and flavors that suggest cherries, strawberries and damp earth or mushrooms, and, above all, a silky texture. Bottlings range from light- to medium-bodied and from simple to complex, but very few are tannic, and almost all can be drunk young. California's Pinot Noirs are beginning to rival Burgundy's for elegance and complexity; Oregon's have delicacy, charm and bright cherry fruit, though a few wineries there are also making bigger wines. The wine's low tannin, tart fruitiness and subtle flavors make it flexible with food. Fruity styles work well with Asian flavors and fish; earthier ones respond beautifully to mushrooms and game.", lesson_id: 3)

Sublesson.create(title: "Juicy", body: "Juicy reds provide us with an everyday drinking wine that is readily available.  Among them we find light Cabernets and Merlots from Australia, California, Chile, Washington and France.  Although less popular in the U.S., we also find other good juicy reds from Spain (Tempranillos), France (Crus Beaujolais), and Italy (Dolcetto).  As mentioned before, this is a great everyday wine, so we can match these perfectly with hamburgers, grilled meats and stews.", lesson_id: 3)

Sublesson.create(title: "Warm & Spicy", body: "Warm & Spicy reds are just as they sound, spicy and hearty.  Among the varieties of this style are Nebbiolo, Sangiovese, Grenache, Syrah/Shiraz and Zinfandel. Within this style we can find blends that have their own nuances, such as Sangiovese blended with Cabernet.  This style provides us with deep flavor that can pair well with stews and game.", lesson_id: 3)


Quiz.create(lesson_id: 3)

Question.create(quiz_id: 3, body: "How many categories of red wine are there?")

Answer.create(question_id: 5, body: "1")
Answer.create(question_id: 5, body: "2")
Answer.create(question_id: 5, body: "3")
Answer.create(question_id: 5, body: "4", correct: true)

Question.create(quiz_id: 3, body: "What are the hallmarks of burgundy style wines?")

Answer.create(question_id: 6, body: "rough texture")
Answer.create(question_id: 6, body: "seductive scents", correct: true)
Answer.create(question_id: 6, body: "a woody taste")
Answer.create(question_id: 6, body: "bitterness")