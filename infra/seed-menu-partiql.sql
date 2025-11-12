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
