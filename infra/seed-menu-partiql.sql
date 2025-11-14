-- Café Tuscaney — DynamoDB seed (PartiQL)
-- Table: CafeMenu
-- PK: ITEM#<category>   SK: META# | GROUP#<name> | OPTION#<group>#<id>

-- ========== SANDWICH ==========
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sandwich','SK':'META#','category':'sandwich','basePrice':8.00};

-- groups
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sandwich','SK':'GROUP#Bread','group':'Bread','type':'single'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sandwich','SK':'GROUP#Meat','group':'Meat','type':'single'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sandwich','SK':'GROUP#ExtraMeat','group':'Extra Meat','type':'multi','priceDelta':2.00};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sandwich','SK':'GROUP#Cheese','group':'Cheese','type':'single'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sandwich','SK':'GROUP#Lettuce','group':'Lettuce','type':'single'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sandwich','SK':'GROUP#Veggies','group':'Veggies','type':'multi'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sandwich','SK':'GROUP#Condiments','group':'Condiments','type':'multi'};

-- options
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sandwich','SK':'OPTION#Bread#wheat','group':'Bread','id':'wheat','label':'Wheat'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sandwich','SK':'OPTION#Bread#white','group':'Bread','id':'white','label':'White'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sandwich','SK':'OPTION#Bread#italian','group':'Bread','id':'italian','label':'Italian'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sandwich','SK':'OPTION#Bread#sourdough','group':'Bread','id':'sourdough','label':'Sourdough'};

INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sandwich','SK':'OPTION#Meat#chicken','group':'Meat','id':'chicken','label':'Chicken'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sandwich','SK':'OPTION#Meat#turkey','group':'Meat','id':'turkey','label':'Turkey'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sandwich','SK':'OPTION#Meat#roastbeef','group':'Meat','id':'roastbeef','label':'Roast Beef'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sandwich','SK':'OPTION#Meat#steak','group':'Meat','id':'steak','label':'Steak'};

INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sandwich','SK':'OPTION#ExtraMeat#chicken','group':'ExtraMeat','id':'chicken','label':'Extra Chicken','priceDelta':2.00};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sandwich','SK':'OPTION#ExtraMeat#turkey','group':'ExtraMeat','id':'turkey','label':'Extra Turkey','priceDelta':2.00};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sandwich','SK':'OPTION#ExtraMeat#roastbeef','group':'ExtraMeat','id':'roastbeef','label':'Extra Roast Beef','priceDelta':2.00};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sandwich','SK':'OPTION#ExtraMeat#steak','group':'ExtraMeat','id':'steak','label':'Extra Steak','priceDelta':2.00};

INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sandwich','SK':'OPTION#Cheese#american','group':'Cheese','id':'american','label':'American'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sandwich','SK':'OPTION#Cheese#pepperjack','group':'Cheese','id':'pepperjack','label':'Pepper Jack'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sandwich','SK':'OPTION#Cheese#swiss','group':'Cheese','id':'swiss','label':'Swiss'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sandwich','SK':'OPTION#Cheese#provolone','group':'Cheese','id':'provolone','label':'Provolone'};

INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sandwich','SK':'OPTION#Lettuce#iceberg','group':'Lettuce','id':'iceberg','label':'Iceberg'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sandwich','SK':'OPTION#Lettuce#kale','group':'Lettuce','id':'kale','label':'Kale'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sandwich','SK':'OPTION#Lettuce#spinach','group':'Lettuce','id':'spinach','label':'Spinach'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sandwich','SK':'OPTION#Lettuce#butter','group':'Lettuce','id':'butter','label':'Butter'};

INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sandwich','SK':'OPTION#Veggies#tomato','group':'Veggies','id':'tomato','label':'Tomato'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sandwich','SK':'OPTION#Veggies#cucumber','group':'Veggies','id':'cucumber','label':'Cucumber'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sandwich','SK':'OPTION#Veggies#onion','group':'Veggies','id':'onion','label':'Onion'};

INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sandwich','SK':'OPTION#Condiments#mayo','group':'Condiments','id':'mayo','label':'Mayo'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sandwich','SK':'OPTION#Condiments#mustard','group':'Condiments','id':'mustard','label':'Mustard'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sandwich','SK':'OPTION#Condiments#spicymayo','group':'Condiments','id':'spicymayo','label':'Spicy Mayo'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sandwich','SK':'OPTION#Condiments#italian','group':'Condiments','id':'italian','label':'Italian Dressing'};

-- ========== SALAD ==========
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'META#','category':'salad','basePrice':9.00};

INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'GROUP#LettuceBase','group':'Lettuce Base','type':'single'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'GROUP#Veggies','group':'Veggies','type':'multi'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'GROUP#Fruits','group':'Fruits','type':'multi'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'GROUP#Proteins','group':'Proteins','type':'multi','priceDelta':2.00};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'GROUP#Nuts','group':'Nuts','type':'multi','priceDelta':1.00};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'GROUP#Seeds','group':'Seeds','type':'multi','priceDelta':1.00};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'GROUP#Cheeses','group':'Cheeses','type':'multi','extraPrice':1.00,'firstFree':true};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'GROUP#Grains','group':'Grains','type':'multi','priceDelta':1.00};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'GROUP#Herbs','group':'Fresh Herbs','type':'multi'};

INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#LettuceBase#iceberg','group':'LettuceBase','id':'iceberg','label':'Iceberg'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#LettuceBase#kale','group':'LettuceBase','id':'kale','label':'Kale'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#LettuceBase#spinach','group':'LettuceBase','id':'spinach','label':'Spinach'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#LettuceBase#butter','group':'LettuceBase','id':'butter','label':'Butter'};

INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Veggies#cucumber','group':'Veggies','id':'cucumber','label':'Cucumber'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Veggies#onion','group':'Veggies','id':'onion','label':'Onion'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Veggies#carrot','group':'Veggies','id':'carrot','label':'Carrots'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Veggies#pepper','group':'Veggies','id':'pepper','label':'Bell Peppers'};

INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Fruits#berries','group':'Fruits','id':'berries','label':'Berries'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Fruits#apple','group':'Fruits','id':'apple','label':'Apples'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Fruits#grapes','group':'Fruits','id':'grapes','label':'Grapes'};

INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Proteins#chicken','group':'Proteins','id':'chicken','label':'Grilled Chicken','priceDelta':2.00};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Proteins#egg','group':'Proteins','id':'egg','label':'Hard-Boiled Eggs','priceDelta':2.00};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Proteins#tofu','group':'Proteins','id':'tofu','label':'Tofu','priceDelta':2.00};

INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Nuts#almonds','group':'Nuts','id':'almonds','label':'Almonds','priceDelta':1.00};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Seeds#sunflower','group':'Seeds','id':'sunflower','label':'Sunflower Seeds','priceDelta':1.00};

INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Cheeses#feta','group':'Cheeses','id':'feta','label':'Feta'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Cheeses#cheddar','group':'Cheeses','id':'cheddar','label':'Cheddar'};

INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Grains#quinoa','group':'Grains','id':'quinoa','label':'Quinoa','priceDelta':1.00};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Herbs#basil','group':'Herbs','id':'basil','label':'Basil'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Herbs#parsley','group':'Herbs','id':'parsley','label':'Parsley'};

-- ========== SOUP ==========
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'META#','category':'soup','basePrice':6.00};

INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'GROUP#Broth','group':'Broth','type':'single'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'GROUP#Proteins','group':'Proteins','type':'multi'}; -- pricing rule later
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'GROUP#Vegetables','group':'Vegetables','type':'multi'};

INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Broth#chicken','group':'Broth','id':'chicken','label':'Chicken'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Broth#beef','group':'Broth','id':'beef','label':'Beef'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Broth#vegetable','group':'Broth','id':'vegetable','label':'Vegetable'};

INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Proteins#chicken','group':'Proteins','id':'chicken','label':'Chicken'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Proteins#tofu','group':'Proteins','id':'tofu','label':'Tofu'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Proteins#beans','group':'Proteins','id':'beans','label':'Beans'};

INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Vegetables#onion','group':'Vegetables','id':'onion','label':'Onions'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Vegetables#carrot','group':'Vegetables','id':'carrot','label':'Carrots'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Vegetables#potato','group':'Vegetables','id':'potato','label':'Potatoes'};

-- ========== DRINKS ==========
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#drink','SK':'META#','category':'drink','basePrice':2.50};

INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#drink','SK':'GROUP#Base','group':'Base','type':'single'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#drink','SK':'GROUP#Flavors','group':'Flavors','type':'multi','priceDelta':0.50};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#drink','SK':'GROUP#Modifier','group':'Modifier','type':'multi'};

INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#drink','SK':'OPTION#Base#lemonade','group':'Base','id':'lemonade','label':'Lemonade'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#drink','SK':'OPTION#Base#tea','group':'Base','id':'tea','label':'Tea'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#drink','SK':'OPTION#Base#coffee','group':'Base','id':'coffee','label':'Coffee'};

INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#drink','SK':'OPTION#Flavors#strawberry','group':'Flavors','id':'strawberry','label':'Strawberry','priceDelta':0.50};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#drink','SK':'OPTION#Flavors#peach','group':'Flavors','id':'peach','label':'Peach','priceDelta':0.50};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#drink','SK':'OPTION#Flavors#mango','group':'Flavors','id':'mango','label':'Mango','priceDelta':0.50};

INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#drink','SK':'OPTION#Modifier#sparkling','group':'Modifier','id':'sparkling','label':'Sparkling (+$0.50)','priceDelta':0.50};

-- ========== SWEET TREATS ==========
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sweet','SK':'META#','category':'sweet'};

INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sweet','SK':'GROUP#Treats','group':'Treats','type':'multi'};

INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sweet','SK':'OPTION#Treats#cookie-chocchip','group':'Treats','id':'cookie-chocchip','label':'Cookie - Chocolate Chip','price':2.00};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sweet','SK':'OPTION#Treats#cookie-sugar','group':'Treats','id':'cookie-sugar','label':'Cookie - Sugar','price':2.00};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sweet','SK':'OPTION#Treats#muffin-blueberry','group':'Treats','id':'muffin-blueberry','label':'Muffin - Blueberry','price':3.00};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sweet','SK':'OPTION#Treats#cinnamonroll','group':'Treats','id':'cinnamonroll','label':'Cinnamon Roll','price':3.50};

-- Extra sandwich cheeses from plan
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sandwich','SK':'OPTION#Cheese#mozzarella','group':'Cheese','id':'mozzarella','label':'Mozzarella'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sandwich','SK':'OPTION#Cheese#cheddar','group':'Cheese','id':'cheddar','label':'Cheddar'};

-- Extra sandwich condiments from plan
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sandwich','SK':'OPTION#Condiments#sweetmustard','group':'Condiments','id':'sweetmustard','label':'Sweet Mustard'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sandwich','SK':'OPTION#Condiments#spicymustard','group':'Condiments','id':'spicymustard','label':'Spicy Mustard'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sandwich','SK':'OPTION#Condiments#ranch','group':'Condiments','id':'ranch','label':'Ranch Dressing'};

-- Extra salad options
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#LettuceBase#arugula','group':'LettuceBase','id':'arugula','label':'Arugula'};

INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Veggies#croutons','group':'Veggies','id':'croutons','label':'Croutons'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Veggies#broccoli','group':'Veggies','id':'broccoli','label':'Broccoli'};

INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Fruits#pear','group':'Fruits','id':'pear','label':'Pears'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Fruits#peach','group':'Fruits','id':'peach','label':'Peaches'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Fruits#mandarin','group':'Fruits','id':'mandarin','label':'Mandarin Oranges'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Fruits#avocado','group':'Fruits','id':'avocado','label':'Avocado'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Fruits#tomato','group':'Fruits','id':'tomato','label':'Tomato'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Fruits#pineapple','group':'Fruits','id':'pineapple','label':'Pineapple'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Fruits#olives','group':'Fruits','id':'olives','label':'Olives'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Fruits#cranberries','group':'Fruits','id':'cranberries','label':'Dried Cranberries'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Fruits#raisins','group':'Fruits','id':'raisins','label':'Raisins'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Fruits#cherries','group':'Fruits','id':'cherries','label':'Dried Cherries'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Fruits#mango','group':'Fruits','id':'mango','label':'Dried Mango'};

-- Extra meat/poultry proteins
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Proteins#turkey','group':'Proteins','id':'turkey','label':'Turkey','priceDelta':2.00};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Proteins#steak','group':'Proteins','id':'steak','label':'Steak','priceDelta':2.00};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Proteins#ham','group':'Proteins','id':'ham','label':'Ham','priceDelta':2.00};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Proteins#bacon','group':'Proteins','id':'bacon','label':'Bacon','priceDelta':2.00};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Proteins#tuna','group':'Proteins','id':'tuna','label':'Tuna','priceDelta':2.00};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Proteins#salmon','group':'Proteins','id':'salmon','label':'Salmon','priceDelta':2.00};

-- Extra vegetarian proteins
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Proteins#blackbeans','group':'Proteins','id':'blackbeans','label':'Black Beans','priceDelta':2.00};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Proteins#chickpeas','group':'Proteins','id':'chickpeas','label':'Chickpeas','priceDelta':2.00};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Proteins#edamame','group':'Proteins','id':'edamame','label':'Edamame','priceDelta':2.00};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Proteins#falafel','group':'Proteins','id':'falafel','label':'Falafel','priceDelta':2.00};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Proteins#lentils','group':'Proteins','id':'lentils','label':'Lentils','priceDelta':2.00};

-- Extra salad nuts (+$1 each)
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Nuts#walnuts','group':'Nuts','id':'walnuts','label':'Walnuts','priceDelta':1.00};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Nuts#pecans','group':'Nuts','id':'pecans','label':'Pecans','priceDelta':1.00};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Nuts#pistachios','group':'Nuts','id':'pistachios','label':'Pistachios','priceDelta':1.00};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Nuts#peanuts','group':'Nuts','id':'peanuts','label':'Peanuts','priceDelta':1.00};

-- Extra salad seeds (+$1 each)
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Seeds#pepitas','group':'Seeds','id':'pepitas','label':'Pepitas','priceDelta':1.00};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Seeds#chia','group':'Seeds','id':'chia','label':'Chia','priceDelta':1.00};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Seeds#hemp','group':'Seeds','id':'hemp','label':'Hemp Hearts','priceDelta':1.00};

INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Cheeses#goat','group':'Cheeses','id':'goat','label':'Goat Cheese'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Cheeses#bleu','group':'Cheeses','id':'bleu','label':'Bleu Cheese'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Cheeses#burrata','group':'Cheeses','id':'burrata','label':'Burrata'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Cheeses#parmesan','group':'Cheeses','id':'parmesan','label':'Parmesan'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Cheeses#mozzarella','group':'Cheeses','id':'mozzarella','label':'Mozzarella'};

INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Grains#farro','group':'Grains','id':'farro','label':'Farro','priceDelta':1.00};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Grains#bulgur','group':'Grains','id':'bulgur','label':'Bulgur','priceDelta':1.00};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Grains#rice','group':'Grains','id':'rice','label':'Rice','priceDelta':1.00};

INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Herbs#dill','group':'Herbs','id':'dill','label':'Dill'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Herbs#chives','group':'Herbs','id':'chives','label':'Chives'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#salad','SK':'OPTION#Herbs#mint','group':'Herbs','id':'mint','label':'Mint'};


-- Extra soup options
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Broth#turkey','group':'Broth','id':'turkey','label':'Turkey'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Broth#fish','group':'Broth','id':'fish','label':'Fish'};

-- Extra soup proteins (meat/poultry)
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Proteins#turkey','group':'Proteins','id':'turkey','label':'Turkey'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Proteins#steak','group':'Proteins','id':'steak','label':'Steak'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Proteins#ham','group':'Proteins','id':'ham','label':'Ham'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Proteins#bacon','group':'Proteins','id':'bacon','label':'Bacon'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Proteins#tuna','group':'Proteins','id':'tuna','label':'Tuna'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Proteins#salmon','group':'Proteins','id':'salmon','label':'Salmon'};

-- Extra soup proteins (vegetarian)
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Proteins#egg','group':'Proteins','id':'egg','label':'Hard-Boiled Eggs'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Proteins#blackbeans','group':'Proteins','id':'blackbeans','label':'Black Beans'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Proteins#chickpeas','group':'Proteins','id':'chickpeas','label':'Chickpeas'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Proteins#edamame','group':'Proteins','id':'edamame','label':'Edamame'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Proteins#falafel','group':'Proteins','id':'falafel','label':'Falafel'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Proteins#lentils','group':'Proteins','id':'lentils','label':'Lentils'};

-- Flavor base
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Vegetables#garlic','group':'Vegetables','id':'garlic','label':'Garlic'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Vegetables#celery','group':'Vegetables','id':'celery','label':'Celery'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Vegetables#leeks','group':'Vegetables','id':'leeks','label':'Leeks'};

-- Root
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Vegetables#sweetpotato','group':'Vegetables','id':'sweetpotato','label':'Sweet Potatoes'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Vegetables#parsnips','group':'Vegetables','id':'parsnips','label':'Parsnips'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Vegetables#turnips','group':'Vegetables','id':'turnips','label':'Turnips'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Vegetables#rutabaga','group':'Vegetables','id':'rutabaga','label':'Rutabaga'};

-- Leafy greens
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Vegetables#spinach','group':'Vegetables','id':'spinach','label':'Spinach'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Vegetables#kale','group':'Vegetables','id':'kale','label':'Kale'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Vegetables#chard','group':'Vegetables','id':'chard','label':'Chard'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Vegetables#cabbage','group':'Vegetables','id':'cabbage','label':'Cabbage'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Vegetables#bokchoy','group':'Vegetables','id':'bokchoy','label':'Bok Choy'};

-- Squash & gourds
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Vegetables#butternut','group':'Vegetables','id':'butternut','label':'Butternut Squash'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Vegetables#zucchini','group':'Vegetables','id':'zucchini','label':'Zucchini'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Vegetables#yellowsquash','group':'Vegetables','id':'yellowsquash','label':'Yellow Squash'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Vegetables#pumpkin','group':'Vegetables','id':'pumpkin','label':'Pumpkin'};

-- Cruciferous
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Vegetables#broccoli','group':'Vegetables','id':'broccoli','label':'Broccoli'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Vegetables#cauliflower','group':'Vegetables','id':'cauliflower','label':'Cauliflower'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Vegetables#brussels','group':'Vegetables','id':'brussels','label':'Brussels Sprouts'};

-- Legumes
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Vegetables#greenbeans','group':'Vegetables','id':'greenbeans','label':'Green Beans'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Vegetables#peas','group':'Vegetables','id':'peas','label':'Peas'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Vegetables#corn','group':'Vegetables','id':'corn','label':'Corn'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Vegetables#lentils','group':'Vegetables','id':'lentils','label':'Lentils'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Vegetables#chickpeas','group':'Vegetables','id':'chickpeas','label':'Chickpeas'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Vegetables#cannellini','group':'Vegetables','id':'cannellini','label':'Cannellini Beans'};

-- Other vegetables
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Vegetables#tomatoes','group':'Vegetables','id':'tomatoes','label':'Tomatoes'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Vegetables#bellpeppers','group':'Vegetables','id':'bellpeppers','label':'Bell Peppers'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Vegetables#mushrooms','group':'Vegetables','id':'mushrooms','label':'Mushrooms'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Vegetables#asparagus','group':'Vegetables','id':'asparagus','label':'Asparagus'};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#soup','SK':'OPTION#Vegetables#okra','group':'Vegetables','id':'okra','label':'Okra'};

-- Extra drink base
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#drink','SK':'OPTION#Base#flavoredwater','group':'Base','id':'flavoredwater','label':'Flavored Water'};

-- Extra fruit flavors
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#drink','SK':'OPTION#Flavors#raspberry','group':'Flavors','id':'raspberry','label':'Raspberry','priceDelta':0.50};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#drink','SK':'OPTION#Flavors#blueberry','group':'Flavors','id':'blueberry','label':'Blueberry','priceDelta':0.50};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#drink','SK':'OPTION#Flavors#blackberry','group':'Flavors','id':'blackberry','label':'Blackberry','priceDelta':0.50};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#drink','SK':'OPTION#Flavors#cherry','group':'Flavors','id':'cherry','label':'Cherry','priceDelta':0.50};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#drink','SK':'OPTION#Flavors#apricot','group':'Flavors','id':'apricot','label':'Apricot','priceDelta':0.50};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#drink','SK':'OPTION#Flavors#pineapple','group':'Flavors','id':'pineapple','label':'Pineapple','priceDelta':0.50};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#drink','SK':'OPTION#Flavors#coconut','group':'Flavors','id':'coconut','label':'Coconut','priceDelta':0.50};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#drink','SK':'OPTION#Flavors#passionfruit','group':'Flavors','id':'passionfruit','label':'Passion Fruit','priceDelta':0.50};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#drink','SK':'OPTION#Flavors#watermelon','group':'Flavors','id':'watermelon','label':'Watermelon','priceDelta':0.50};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#drink','SK':'OPTION#Flavors#grape','group':'Flavors','id':'grape','label':'Grape','priceDelta':0.50};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#drink','SK':'OPTION#Flavors#kiwi','group':'Flavors','id':'kiwi','label':'Kiwi','priceDelta':0.50};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#drink','SK':'OPTION#Flavors#rhubarb','group':'Flavors','id':'rhubarb','label':'Rhubarb','priceDelta':0.50};

-- Herb/flower flavors
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#drink','SK':'OPTION#Flavors#mint','group':'Flavors','id':'mint','label':'Mint','priceDelta':0.50};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#drink','SK':'OPTION#Flavors#lavender','group':'Flavors','id':'lavender','label':'Lavender','priceDelta':0.50};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#drink','SK':'OPTION#Flavors#basil','group':'Flavors','id':'basil','label':'Basil','priceDelta':0.50};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#drink','SK':'OPTION#Flavors#rosemary','group':'Flavors','id':'rosemary','label':'Rosemary','priceDelta':0.50};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#drink','SK':'OPTION#Flavors#hibiscus','group':'Flavors','id':'hibiscus','label':'Hibiscus','priceDelta':0.50};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#drink','SK':'OPTION#Flavors#rose','group':'Flavors','id':'rose','label':'Rose','priceDelta':0.50};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#drink','SK':'OPTION#Flavors#chamomile','group':'Flavors','id':'chamomile','label':'Chamomile','priceDelta':0.50};

-- Other flavors
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#drink','SK':'OPTION#Flavors#ginger','group':'Flavors','id':'ginger','label':'Ginger','priceDelta':0.50};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#drink','SK':'OPTION#Flavors#vanilla','group':'Flavors','id':'vanilla','label':'Vanilla','priceDelta':0.50};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#drink','SK':'OPTION#Flavors#cinnamon','group':'Flavors','id':'cinnamon','label':'Cinnamon','priceDelta':0.50};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#drink','SK':'OPTION#Flavors#cardamom','group':'Flavors','id':'cardamom','label':'Cardamom','priceDelta':0.50};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#drink','SK':'OPTION#Flavors#sichuan','group':'Flavors','id':'sichuan','label':'Sichuan Peppercorns','priceDelta':0.50};

-- Extra cookies
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sweet','SK':'OPTION#Treats#cookie-oatmeal','group':'Treats','id':'cookie-oatmeal','label':'Cookie - Oatmeal','price':2.00};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sweet','SK':'OPTION#Treats#cookie-peanutbutter','group':'Treats','id':'cookie-peanutbutter','label':'Cookie - Peanut Butter','price':2.00};

-- Muffins
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sweet','SK':'OPTION#Treats#muffin-strawberry','group':'Treats','id':'muffin-strawberry','label':'Muffin - Strawberry','price':3.00};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sweet','SK':'OPTION#Treats#muffin-chocolate','group':'Treats','id':'muffin-chocolate','label':'Muffin - Chocolate','price':3.00};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sweet','SK':'OPTION#Treats#muffin-banana','group':'Treats','id':'muffin-banana','label':'Muffin - Banana','price':3.00};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sweet','SK':'OPTION#Treats#muffin-poppyseed','group':'Treats','id':'muffin-poppyseed','label':'Muffin - Poppyseed','price':3.00};

-- Cakes
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sweet','SK':'OPTION#Treats#cake-lemon','group':'Treats','id':'cake-lemon','label':'Cake Slice - Lemon','price':4.50};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sweet','SK':'OPTION#Treats#cake-butter','group':'Treats','id':'cake-butter','label':'Cake Slice - Butter','price':4.50};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sweet','SK':'OPTION#Treats#cake-chocolate','group':'Treats','id':'cake-chocolate','label':'Cake Slice - Chocolate','price':4.50};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sweet','SK':'OPTION#Treats#cake-redvelvet','group':'Treats','id':'cake-redvelvet','label':'Cake Slice - Red Velvet','price':4.50};

-- Extra cinnamon rolls
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sweet','SK':'OPTION#Treats#cinnamonroll-chocolate','group':'Treats','id':'cinnamonroll-chocolate','label':'Cinnamon Roll - Chocolate','price':3.50};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sweet','SK':'OPTION#Treats#cinnamonroll-strawberry','group':'Treats','id':'cinnamonroll-strawberry','label':'Cinnamon Roll - Strawberry Shortcake','price':3.75};

-- Cheesecake with toppings
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sweet','SK':'OPTION#Treats#cheesecake-strawberry','group':'Treats','id':'cheesecake-strawberry','label':'Cheesecake Slice - Strawberry','price':4.50};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sweet','SK':'OPTION#Treats#cheesecake-chocolate','group':'Treats','id':'cheesecake-chocolate','label':'Cheesecake Slice - Chocolate','price':4.50};

-- Tarts
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sweet','SK':'OPTION#Treats#tart-strawberry','group':'Treats','id':'tart-strawberry','label':'Tart - Strawberry','price':3.50};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sweet','SK':'OPTION#Treats#tart-lemon','group':'Treats','id':'tart-lemon','label':'Tart - Lemon','price':3.50};
INSERT INTO "CafeMenu" VALUE {'PK':'ITEM#sweet','SK':'OPTION#Treats#tart-chocolate','group':'Treats','id':'tart-chocolate','label':'Tart - Chocolate','price':3.50};
