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

# Quiz.create(lesson_id: 1)
# 
# Question.create(quiz_id: 1, body: "What is the key to picking good grapes for wine?")
# 
# Answer.create(question_id: 1, body: "right degree of ripeness", correct: true)
# Answer.create(question_id: 1, body: "right temperature")
# Answer.create(question_id: 1, body: "right color")
# Answer.create(question_id: 1, body: "right location")
# 
# Question.create(quiz_id: 1, body: "What is clarification?")
# 
# Answer.create(question_id: 2, body: "filtering the wine product")
# Answer.create(question_id: 2, body: "using egg whites to bind some of the wine particles together", correct: true)
# Answer.create(question_id: 2, body: "heating the finished wine product")
# Answer.create(question_id: 2, body: "changing the coloring of the wine")

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

Question.create(quiz_id: 1, body: "The first part of the process involves using what?")

Answer.create(question_id: 1, body: "your eyes", correct: true)
Answer.create(question_id: 1, body: "your hands")
Answer.create(question_id: 1, body: "your mouth")
Answer.create(question_id: 1, body: "your nose")

Question.create(quiz_id: 1, body: "What is the most common defect for wine?")

Answer.create(question_id: 2, body: "overheated wine")
Answer.create(question_id: 2, body: "corked wine", correct: true)
Answer.create(question_id: 2, body: "too old")
Answer.create(question_id: 2, body: "wrong type of grapes")

Lesson.create(title: "Styles of Red Wine", locked: true, course_id: 1, introduction: "Although wine tasting is very much subjective, there are general tastes that can be commonly shared and understood. In the following section I will take you through some of the general concepts on red wine styles. Reds can range from great bold and tannic wines that require aging, to silky and smooth young wines. To easily differentiate between Red wine styles, we can separate them into four categories — Bordeaux, Burgundy, Juicy and Warm & Spicy.")

Sublesson.create(title: "Bordeaux", body: "Bordeaux style wines are very popular and can be greatly diverse.  On one end of the spectrum you will find velvety Merlot-based wines and on the opposite end you will find bold Cabernet-based wines.  We can find these styles not only from France, but also from California and Australia.  The Merlot-based style can be matched with white meats and fish, while the Cabernet-based style is better matched with roasts, lamb or beef.", lesson_id: 3)

Sublesson.create(title: "Burgundy", body: "Burgundy style wines come from the Pinot Noir grape.  The most sensual and beguiling of all red wines, the best Pinot Noirs are from Burgundy, but California, Oregon and New Zealand have all done wonders with this difficult grape. Though Pinot Noir appears in many different styles, its hallmarks are seductive scents and flavors that suggest cherries, strawberries and damp earth or mushrooms, and, above all, a silky texture. Bottlings range from light- to medium-bodied and from simple to complex, but very few are tannic, and almost all can be drunk young. California's Pinot Noirs are beginning to rival Burgundy's for elegance and complexity; Oregon's have delicacy, charm and bright cherry fruit, though a few wineries there are also making bigger wines. The wine's low tannin, tart fruitiness and subtle flavors make it flexible with food. Fruity styles work well with Asian flavors and fish; earthier ones respond beautifully to mushrooms and game.", lesson_id: 3)

Sublesson.create(title: "Juicy", body: "Juicy reds provide us with an everyday drinking wine that is readily available.  Among them we find light Cabernets and Merlots from Australia, California, Chile, Washington and France.  Although less popular in the U.S., we also find other good juicy reds from Spain (Tempranillos), France (Crus Beaujolais), and Italy (Dolcetto).  As mentioned before, this is a great everyday wine, so we can match these perfectly with hamburgers, grilled meats and stews.", lesson_id: 3)

Sublesson.create(title: "Warm & Spicy", body: "Warm & Spicy reds are just as they sound, spicy and hearty.  Among the varieties of this style are Nebbiolo, Sangiovese, Grenache, Syrah/Shiraz and Zinfandel. Within this style we can find blends that have their own nuances, such as Sangiovese blended with Cabernet.  This style provides us with deep flavor that can pair well with stews and game.", lesson_id: 3)


Quiz.create(lesson_id: 3)

Question.create(quiz_id: 2, body: "How many categories of red wine are there?")

Answer.create(question_id: 3, body: "1")
Answer.create(question_id: 3, body: "2")
Answer.create(question_id: 3, body: "3")
Answer.create(question_id: 3, body: "4", correct: true)

Question.create(quiz_id: 2, body: "What are the hallmarks of burgundy style wines?")

Answer.create(question_id: 4, body: "rough texture")
Answer.create(question_id: 4, body: "seductive scents", correct: true)
Answer.create(question_id: 4, body: "a woody taste")
Answer.create(question_id: 4, body: "bitterness")

Lesson.create(title: "Styles of White Wine", locked: true, course_id: 1, introduction: "Although wine tasting is very much subjective, there are general tastes that can be commonly shared and understood. In the following section I will take you through some of the general concepts on white wine styles. While not given the same respect as their red couterparts, white wines can offer some very unique and delicious flavors that would satisfy even the most discernable of palates. Like reds, white wines have varying flavors and styles.  The following are brief descriptions and suggested food pairings for whites broken down into the following categories: Chardonnay, Riesling, Floral, Acidic and Sweet.")

Sublesson.create(title: "Chardonnay", body: "Chardonnay can range in flavor from fruity, to flinty or spicy depending on the way the grape is fermented and aged.  Classic Chardonnay is fermented and then aged in oak barrels for a minimum of 12 months.  This lends the wine a fruity flavor that matches well with roasted chicken, baked fish and creamy pasta dishes such as Fettuccine Alfredo.", lesson_id: 4)

Sublesson.create(title: "Unoaked Chardonnay", body: "Unoaked Chardonnay, however, has a flinty or steely flavor.  This style originated from the Chablis district of Burgundy and, as the name suggests, is not aged in oak barrels.  Although the best of these wines come from Chablis some good varieties have come from the US, Australia and New Zealand.  It is a crisp and refreshing wine that is best paired with shellfish.", lesson_id: 4)

Sublesson.create(title: "Spicy Chardonnays", body: "Spicy Chardonnays are oaked but are not as complex as the classic varieties.  Their flavors are suggestive of tropical fruit, citrus and melon or apple and make for good aperitifs or accompaniments to pastas and grilled meats.", lesson_id: 4)

Sublesson.create(title: "Riesling", body: "Riesling wines can be either dry or sweet.  Dry Reisling has a distinct floral aroma and tastes of both fruit and acidity.  Although it can be paired well with many foods, it is best consumed alone to best appreciate its complexity.  Sweeter style Rieslings have the same distinct flavors as dry Rieslings with the addition of honey and a richer texture on the palate.  These can best be appreciated as aperitifs, with rich blue cheeses or spicey foods.", lesson_id: 4)

Sublesson.create(title: "Floral whites", body: "Floral whites are perfumy and are usually sweet on the finish.  Two classic examples of this style of wine are Gewurztraminer and Pinot Gris from the Alsace region of France.  Viogniers from France, California and Virginia have more fruity undertones but pair nicely with the same foods as Gerwurztraminer and Pinot Gris such as spicy asian dishes, smoked meats, cheeses and fish.", lesson_id: 4)

Quiz.create(lesson_id: 4)

Question.create(quiz_id: 3, body: "How many categories of white wine are there?")

Answer.create(question_id: 5, body: "1")
Answer.create(question_id: 5, body: "2")
Answer.create(question_id: 5, body: "3")
Answer.create(question_id: 5, body: "4", correct: true)

Question.create(quiz_id: 3, body: "What are the foods that go well with Chardonnay?")

Answer.create(question_id: 6, body: "fruits")
Answer.create(question_id: 6, body: "pastas and grilled meats", correct: true)
Answer.create(question_id: 6, body: "bread and cheese")
Answer.create(question_id: 6, body: "salsa")

Lesson.create(title: "Other Styles of Wine", locked: true, course_id: 1, introduction: "Although wine tasting is very much subjective, there are general tastes that can be commonly shared and understood. In the following section I will take you through some of the general concepts on Rose, Sparkling and Fortified Wines.")

Sublesson.create(title: "Rose Wines", body: "Rose wines are made with red grape varietals.  The skins of the grapes are only allowed to sit with the wine for 2-3 days after pressing as opposed to the usual 14 during the production of reds.  Similarly to Rieslings, Roses can range in flavor from dry to sweet. Higher quality dry Roses come from the South of France or the North of Spain and are made from the Granache (or Garnacha) grape.   A good, dry Rose can be an excellent accompaniment to foods, especially Mediterranean fare or cheeses.  Even the best of these wines are usually economically priced.  A good, non-sparkling Rose can range in price from $20 to $25 dollars a bottle.", lesson_id: 5)

Sublesson.create(title: "Sparkling Wines", body: "The crown jewel of this category is, of course, Champagne.  No sparkling wine produced outside of the Champagne region of France can be called Champagne despite the common misuse of the term to refer to all sparkling wines.  Proseccos, Astis and Brachettos from Italy as well as Cavas from Spain can all be festive and vary widely in flavors.  Dry or off-dry champagne or champagne style California wines go well with oysters or caviar.  Generally, sparkling wines are wonderful all on their own or can be a lovely way to commence a special meal.", lesson_id: 5)

Sublesson.create(title: "Fortified Wines", body: "Fortified wines are all richer, sweeter and possess more alcohol than their unfortified counterparts.  Ports and Sherries are the two most important wines of this category.

Portugal's classic wine, Port, is made from grapes that are grown and processed in the Duouro region.  Although it can be created in various different sub-styles including ruby, white, tawny and vintage, all ports generally have a rich depth of flavor and warmth.  Ruby Port has bright fruit flavors while tawny and vintage ports are more powerful and bold.  Many European countries enjoy ports as aperitifs but they are also commonly enjoyed in the United States as dessert wines, accompanied by cheese courses.

Spain's sherry wine is the classic accompaniment to their traditional pre-dinner tapas.  In fact, the tradition of those savory snacks originated from the need to cover ('tapar' in Spanish) the tops of sherry glasses with slices of bread to shield the libation from pesky flies.  The Spaniards decided to add things to the tops of those bread slices and the rest is gastronomic history.  Considering its origins, it is safe to say that dry sherry wines pair well with foods.  Raisiny, sweet sherries also pair well with soft and cheddar-style cheeses.", lesson_id: 5)

# Quiz.create(lesson_id: 5)
# 
# Question.create(quiz_id: 4, body: "Where does champagne originate?")
# 
# Answer.create(question_id: 7, body: "Australia")
# Answer.create(question_id: 7, body: "Germany")
# Answer.create(question_id: 7, body: "Portugal")
# Answer.create(question_id: 7, body: "France", correct: true)
# 
# Question.create(quiz_id: 4, body: "What are examples of fortified wines?")
# 
# Answer.create(question_id: 8, body: "brandy")
# Answer.create(question_id: 8, body: "ports and sherries", correct: true)
# Answer.create(question_id: 8, body: "sparkling wine")
# Answer.create(question_id: 8, body: "tapas")

Lesson.create(title: "How to Store Wine", locked: false, course_id: 1, introduction: "A few simple tips on how to store your new wine purchases can keep them safe and sound until you are ready to enjoy them. So you’ve purchased a case of wine…now where are you going to put it? You absolutely do not need a large wine refrigerator or your own cellar to store wine well. In fact, only a small percentage of wines on the market benefit from long-term aging, while most are ready to drink within a few years of release. Following a few simple guidelines should keep your wines safe and delicious until you’re ready to drink them.")

Sublesson.create(title: "Keep It Cool & Dark", body: "Heat is enemy number one for wine. Temperatures higher than 70° F will age a wine more quickly than is desirable.  Optimal wine storage is about 55°F.  But more important than worrying about achieving that perfect level is avoiding any extreme or frequent temperature swings.  Also keep an eye on the humidity.  Wines should be stored at an ideal humidity level of 70 percent. The theory goes that dry air will dry out the corks, which would let air into the bottle and spoil the wine.

Light, especially sunlight, can pose a potential problem for long-term storage. The sun’s UV rays can degrade and prematurely age wine. This is one of the reasons some winemakers make darker bottles, adequately protecting the wine from the light.

Also, you can keep your wine in your household refrigerator for up to a couple months, but it’s not a good bet for the longer term and it takes up a lot of space.", lesson_id: 6)

Sublesson.create(title: "Keep it Sideways", body: "Traditionally, bottles have been stored on their sides in order to keep the liquid up against the cork, which should keep the cork from drying out. If you’re planning on drinking these bottles in the near future, or if the bottles have different closures (screw caps, glass or plastic corks), this is not necessary. However, sideways racking is a space-efficient way to store your bottles, and it looks pretty cool.", lesson_id: 6)

Sublesson.create(title: "So Where Should I Keep My Bottles?", body: "If you’re not lucky enough to have a perfect basement that can double as a cellar, you can do just fine with some simple racks in a safe place. Rule out your kitchen or laundry room, where hot temperatures could affect your wines, and look for a location not directly in line with light pouring in from a window Above all, don’t stash a collection on top of the refrigerator.  Overhead lighting and refrigerator exhaust give off a lot of heat, and the constant vibration can affect the taste.  A simple closet is a good choice.

If you want to do more than just the basic wine racks, you have a whole range of choices. They range from buying a small wine storage cabinet to building an actual wine room/cellar. Figure out how much wine you want to store first and then plan on how to do it. For most of us, storing wine in a specifically designed cabinet will do very well. What you decide to do will also depend on the kinds of wine you want to keep, and when you want to drink them. A good part of any storage system is a method of keeping track of what you have and make it easy to find when you want to drink it. Using either an app or just basic organization can keep your wine storage functional.

There is no worse experience than opening up a bottle of wine you are excited for and finding it spoiled! Following these simple wine storage tips can keep you and your wines happy campers.", lesson_id: 6)

# Quiz.create(lesson_id: 6)

# Question.create(quiz_id: 5, body: "In what orientation should you keep your bottles?")
# 
# Answer.create(question_id: 9, body: "Right side up")
# Answer.create(question_id: 9, body: "Upside down")
# Answer.create(question_id: 9, body: "Diagonal")
# Answer.create(question_id: 9, body: "Sideways", correct: true)
# 
# Question.create(quiz_id: 5, body: "What temperature should I keep my wines?")
# 
# Answer.create(question_id: 10, body: "warm")
# Answer.create(question_id: 10, body: "cool", correct: true)
# Answer.create(question_id: 10, body: "hot")
# Answer.create(question_id: 10, body: "freezing")

Lesson.create(title: "How to Cook With Wine", locked: false, course_id: 1, introduction: "Cooking with wine can seem intimidating but is truly an easy, fun way to enhance your meals. W.C. Fields has it right! The fun of using wine while you are in the kitchen is twofold. First off, you can make whatever you are cooking have a deeper and more nuanced flavor. Even better, cooking becomes even more fun when you are sipping a glass (or two!) while you make culinary magic. There are a few things to remember that will help you take your dish to the next level using wine.")

Sublesson.create(title: "The first and most important rule", body: "Use only wines in your cooking that you would drink!  Never use any wine that you would not drink.  If you do not like the taste of a wine, you are only imparting that flavor into your food. Using wine when you cook is meant to make you like it more, not less.", lesson_id: 7)

Sublesson.create(title: "Avoid the temptation to grab a bottle of 'cooking wine'", body: "These wines contain a lot of salt and other additives and again, unless you want to drink this from a glass, stay away.   Also, for those eating healthy, if you're cooking with a decent wine and using good seasonings, you can skip the extra and unhealthy sodium contained in these “cooking wines. You don’t need to uncork your best bottle for cooking, However a real cheapie will not bring out the best characteristics of your dish.  A decent, middle-of-the-road wine, that you like, will provide the same flavor to a dish as an expensive wine. Save the good stuff for drinking with the meal.", lesson_id: 7)

Sublesson.create(title: "Cook with Wine", body: "Wine has three main uses in the kitchen - as a marinade ingredient, as a cooking liquid, and as a flavoring in a finished dish.

The function of wine in cooking is to intensify and enhance the flavor of the food - not to dilute it or make it somehow taste different. 

Most say wine should not be added to a dish just before serving.  The wine should simmer with the food, or sauce, to enhance the flavor of the dish. If added in late, it could have a strong overpowering flavor.  Also, use the rule of “you can always add more” before pouring it all on.  A wine needs time to develop its flavor in your dish.  Wait 10 minutes or more to taste before adding more wine.

Keep in mind that not all of the alcohol will evaporate from the cooking process (alcohol boils away at 172° F , which is lower than  boiling water). The residual alcohol that remains in your dish depends on the length of time and way in which it was cooked. For example, boiling a sauce for 25 minutes will remove considerably more alcohol than merely baking a dish for 15 minutes.", lesson_id: 7)

Quiz.create(lesson_id: 7)

Question.create(quiz_id: 4, body: "What are the problems with cooking wine?")

Answer.create(question_id: 7, body: "Too uncommon")
Answer.create(question_id: 7, body: "Too expensive")
Answer.create(question_id: 7, body: "Too dry")
Answer.create(question_id: 7, body: "Sodium and additives", correct: true)

Question.create(quiz_id: 4, body: "How much wine should I add?")

Answer.create(question_id: 8, body: "as much as possible")
Answer.create(question_id: 8, body: "enough to enhance the flavor", correct: true)
Answer.create(question_id: 8, body: "as little as possible")
Answer.create(question_id: 8, body: "doesn't matter")
