# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

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
Answer.create(question_id: 2, body: "using egg whites to bind some of the wine particles together")
Answer.create(question_id: 2, body: "heating the finished wine product")
Answer.create(question_id: 2, body: "changing the coloring of the wine")

