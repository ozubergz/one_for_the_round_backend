# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all
Item.destroy_all

#============================ Categories ==============================

breakfast = Category.create(name: "Breakfast")
hot_sandwiches = Category.create(name: "Hot Sandwiches")
cold_sandwiches = Category.create(name: "Cold Sandwiches") #has multi options
peruvian_chicken = Category.create(name: "Peruvain BBQ Chicken")
mexican_grill = Category.create(name: "Mexican Grill")
mexican_sides = Category.create(name: "Mexican Sides")
savory_crepe = Category.create(name: "Savory Crepe")
sweet_crepe = Category.create(name: "Sweet Crepe")
family_packs = Category.create(name: "Family Packs")
bahn_mi = Category.create(name: "Bahn Mi Sandwiches")
k_food = Category.create(name: "K-Food Sandwiches")
salads = Category.create(name: "Salads")
ribs = Category.create(name: "BBQ Baby Back Ribs Texan Style")
mediterranean_bbq = Category.create(name: "Mediterranean BBQ")
shaved_ices = Category.create(name: "Shaved Ices")
baked_good = Category.create(name: "Baked Goods") #has multi options
ice_cream = Category.create(name: "Ice Cream") #has multi options
hot_drinks = Category.create(name: "Hot Drinks") #has multi options
cold_drinks = Category.create(name: "Cold Drinks") #has multi options
juices_smoothies = Category.create(name: "Juice & Smoothie") #has multi options

#============================ Breakfast Items ==============================

Item.create(
    name: "Street Sandwich",
    description: "On a buttered and toasted brioche bun with house sauce.",
    category: breakfast,
    price: 5.50
)

Item.create(
    name: "Original Sandwich",
    description: "Egg mix, shredded cabbage, ham, and cheese.",
    category: breakfast,
    price: 6.00
)

Item.create(
    name: "Baconese Sandwich",
    description: "Egg mix, smoked bacon, ham, and cheese.",
    category: breakfast,
    price: 6.00
)

Item.create(
    name: "Avocalic Sandwich",
    description: "Egg mix, fresh avocado, and tomatoes.",
    category: breakfast,
    price: 6.50
)

Item.create(
    name: "Teriyaki Sandwich",
    description: "Egg mix, BBQ beef, and teriyaki sauce.",
    category: breakfast,
    price: 6.50
)

Item.create(
    name: "Breakfast Crepe 'One for the Road'",
    description: "Egg, Ham, Sauteed Onion, w/ Sesame Dressing wrap with fresly made French Crepe",
    category: breakfast,
    price: 6.50
)

Item.create(
    name: "Grilled Cheese Sandwich",
    category: breakfast,
    price: 4.50
)

Item.create(
    name: "Breakfast Platter",
    description: "2 eggs any style. Served with toast and french fries or hashbrown",
    category: breakfast,
    price: 6.25
)

Item.create(
    name: "Bagel",
    category: breakfast,
    price: 1.50
)

Item.create(
    name: "Bagel with Cream Cheese",
    category: breakfast,
    price: 2.75
)

Item.create(
    name: "Bagel with Butter & Jelly",
    category: breakfast,
    price: 2.00
)

Item.create(
    name: "Bagel with Peanut Butter",
    category: breakfast,
    price: 2.75
)

Item.create(
    name: "Roll with Cream Cheese",
    category: breakfast,
    price: 2.75
)

Item.create(
    name: "Roll with Butter & Jelly",
    category: breakfast,
    price: 2.00
)

Item.create(
    name: "Roll with Peanut Butter",
    category: breakfast,
    price: 2.75
)

Item.create(
    name: "Grilled Cheese Sandwich",
    category: breakfast,
    price: 4.50
)

Item.create(
    name: "Street Sandwich Original/BLT/Italian",
    category: breakfast,
    price: 5.50
)

Item.create(
    name: "Cheese Omelette",
    description: "Served with toast and your choice of french fries or hashbrowns.",
    category: breakfast,
    price: 6.50
)

Item.create(
    name: "Western Omellette",
    description: "Ham, onion, & bell pepper. Served with toast and your choice of french fries or hashbrowns.",
    category: breakfast,
    price: 7.00
)

Item.create(
    name: "Ham and Cheese Omellette",
    description: "Ham and choice of cheese. Served with toast and your choice of french fries or hashbrowns.",
    category: breakfast,
    price: 7.00
)

Item.create(
    name: "Spanish Omelette",
    description: "Bacon, cheddar, bell pepper, & onion. Served with toast and your choice of french fries or hashbrowns.",
    category: breakfast,
    price: 7.00
)

Item.create(
    name: "Spinach & Mushroom Omelette",
    description: "Served with toast and your choice of french fries or hashbrowns.",
    category: breakfast,
    price: 7.00
)


#============================ Hot Sandwiches ==============================

Item.create(
    name: "Philly Sandwich",
    description: "On a hero with onion, mushroom, and cheese.",
    category: hot_sandwiches,
    price: 8.95
)

Item.create(
    name: "Godfather Sandwich",
    description: "On a hero with pepper, marinara sauce, and mozzarella cheese.",
    category: hot_sandwiches,
    price: 8.95
)


Item.create(
    name: "Reuben Sandwich",
    description: "On rye with sauerkraut and Russian dressing.",
    category: hot_sandwiches,
    price: 8.95
)

Item.create(
    name: "Chicken Parmigiana Sandwich",
    description: "On a hero with Swiss, marinara, and mozzarella.",
    category: hot_sandwiches,
    price: 8.95
)

Item.create(
    name: "Pastrami Sandwich",
    description: "On a roll, white bread, or wheat bread with Swiss and mustard.",
    category: hot_sandwiches,
    price: 8.95
)

Item.create(
    name: "Roast Beef Sandwich",
    description: "On a hero with provolone and au jus sauce.",
    category: hot_sandwiches,
    price: 8.95
)

#============================ Cold Sandwiches ==============================

Item.create(
    name: "BLT Sandwich",
    description: "On white or wheat bread.",
    category: cold_sandwiches,
    price: 6.50
)

Item.create(
    name: "BLAT Sandwich",
    description: "BLT with avocado and Italian dressing on French or Italian bread.",
    category: cold_sandwiches,
    price: 7.95
)

Item.create(
    name: "Ham and Cheese Sandwich",
    description: "Lettuce, mayo, and tomato on a hero.",
    category: cold_sandwiches,
    price: 8.95
)

Item.create(
    name: "Egg Salad Sandwich",
    description: "On white, wheat, or a bun with mayo and leaf lettuce.",
    category: cold_sandwiches,
    price: 7.95
)

Item.create(
    name: "Tuna Salad Sandwich",
    description: "On white or wheat bread with mayo and leaf lettuce.",
    category: cold_sandwiches,
    price: 7.95
)

Item.create(
    name: "Chicken Salad Sandwich",
    description: "On white or wheat bread with mayo and leaf lettuce.",
    category: cold_sandwiches,
    price: 8.95
)

Item.create(
    name: "Turkey Swiss Sandwich",
    description: "On a croissant with leaf lettuce, tomato, and mayo or horseradish.",
    category: cold_sandwiches,
    price: 7.95
)

Item.create(
    name: "Italian Sub Sandwich",
    description: "On a hero with pepper, lettuce, tomatoes, and Italian dressing.",
    category: cold_sandwiches,
    price: 8.95
)

Item.create(
    name: "Ham and American Cheese Club Sandwich",
    description: "On wheat or white bread with lettuce, tomato, bacon, and mayo.",
    category: cold_sandwiches,
    price: 8.95
)

Item.create(
    name: "Turkey and Swiss Cheese Club Sandwich",
    description: "On wheat or white bread with lettuce, tomato, bacon, and mayo.",
    category: cold_sandwiches,
    price: 8.95
)

#============================ Peruvian Chicken ==============================

Item.create(
    name: "1/2 Chicken Only",
    category: peruvian_chicken,
    price: 9.95
)

Item.create(
    name: "1/2 Chicken Combo",
    description: "Served with saffron rice and a side salad.",
    category: peruvian_chicken,
    price: 12.95
)

Item.create(
    name: "Whole Chicken Only",
    category: peruvian_chicken,
    price: 16.95
)

Item.create(
    name: "Whole Chicken Combo",
    description: "Served with 2 saffron rice and a side salad.",
    category: peruvian_chicken,
    price: 19.95
)

Item.create(
    name: "Peruvian Family Combo",
    description: "Whole chicken, avocado salad, two serving saffron rice, salchipapa (french fries,sausage) or Fried green plantain, and 2-liter Inca kola.(or coke, ginger aire)",
    category: peruvian_chicken,
    price: 32.00
)

#============================ Mexican Grill ==============================

Item.create(
    name: "Chicken Quesadilla",
    description: "Popular with Marinated BBQ chicken meat, Saffron rice, shredded cheeses, sauteed onions, bell peppers.",
    category: mexican_grill,
    price: 8.95
)

Item.create(
    name: "Beef Quesadilla",
    description: "Marinated BBQ beef, shredded cheeses, sauteed onions, bell peppers serve with saffron rice and side garden salad",
    category: mexican_grill,
    price: 9.95
)

Item.create(
    name: "Mushroom and Bacon Quesadilla",
    category: mexican_grill,
    price: 8.50
)

Item.create(
    name: "Chicken Burrito",
    description: "With Marinated BBQ chicken meat, Saffron rice, shredded cheeses, sauteed onions, bell peppers.",
    category: mexican_grill,
    price: 8.95
)

Item.create(
    name: "Beef Burrito",
    category: mexican_grill,
    price: 9.95
)

Item.create(
    name: "Spicy Pork Burrito",
    category: mexican_grill,
    price: 8.95
)

#============================ Mexican Sides ==============================

Item.create(
    name: "White Rice",
    category: mexican_sides,
    price: 2.00
)

Item.create(
    name: "Saffron Rice",
    category: mexican_sides,
    price: 2.50
)

Item.create(
    name: "Aji Sauce",
    description: "Green sauce.",
    category: mexican_sides,
    price: 0.75
)

Item.create(
    name: "Grilled Vegetables",
    category: mexican_sides,
    price: 4.95
)

Item.create(
    name: "Grilled Baby Potato",
    category: mexican_sides,
    price: 4.95
)

Item.create(
    name: "Fried Green Plantain",
    category: mexican_sides,
    price: 4.95
)

Item.create(
    name: "Fried Yellow Plantain",
    category: mexican_sides,
    price: 3.50
)

Item.create(
    name: "French Fries",
    category: mexican_sides,
    price: 3.50
)

Item.create(
    name: "Salchipapa",
    description: "Sausage with french fries.",
    category: mexican_sides,
    price: 4.50
)

#============================ Savory Crepes ==============================

Item.create(
    name: "Avocado and Shrimp Crepe",
    category: savory_crepe,
    price: 8.50    
)

Item.create(
    name: "Korean BBQ Beef Crepe",
    category: savory_crepe,
    price: 8.50
)

Item.create(
    name: "Spicy Pork Crepe",
    category: savory_crepe,
    price: 8.50
)

Item.create(
    name: "Marinated Chicken Crepe",
    category: savory_crepe,
    price: 8.50
)

Item.create(
    name: "Marinated Chicken Crepe",
    category: savory_crepe,
    price: 8.50
)

#============================ Sweet Crepes ==============================

Item.create(
    name: "Strawberry-Banana Crepe",
    category: sweet_crepe,
    price: 6.50
)

Item.create(
    name: "Banana & Nutella Crepe",
    category: sweet_crepe,
    price: 6.50
)

Item.create(
    name: "Mango Crepe",
    category: sweet_crepe,
    price: 6.50
)

Item.create(
    name: "Chocolate Nut Crepe",
    category: sweet_crepe,
    price: 6.50
)

#============================ Family Crepes ==============================

Item.create(
    name: "Mediterranean Family Combo with Chicken Kebab",
    description: "6 piece chicken kebab, 6 pieces of grilled pita bread, Greek salad, large tzatziki sauce, french fries, and a 2-liter soda.",
    category: family_packs,
    price: 33.00
)

Item.create(
    name: "Mediterranean Family Combo with Gyro",
    description: "3 piece gyro, 6 pieces of grilled pita bread, Greek salad, large tzatziki sauce, french fries, and a 2-liter soda.",
    category: family_packs,
    price: 33.00
)

Item.create(
    name: "Mediterranean Family Combo",
    description: "Full baby back rib, 3 links of BBQ sausage, 3 pieces of cornbread, coleslaw, BBQ sauce, french fries, and a 2-liter soda.",
    category: family_packs,
    price: 33.00
)

#============================ Bahn Mi Sandwiches ==============================

Item.create(
    name: "Beef Banh Mi Sandwich",
    category: bahn_mi,
    price: 8.95
)

Item.create(
    name: "Tofu Banh Mi Sandwich",
    category: bahn_mi,
    price: 8.95
)

Item.create(
    name: "Spiced Pork Banh Mi Sandwich",
    category: bahn_mi,
    price: 7.95
)

Item.create(
    name: "Chicken Banh Mi Sandwich",
    category: bahn_mi,
    price: 7.95
)

#============================ K-Food Sandwiches ==============================

Item.create(
    name: "Spicy Pork Sandwiches",
    description: "Marinated Spicy Pork grill to the perfection with onion, pepper,hot jalapeno, chives, top with shredded lettuce on house special sauce. Serving on butter toast French Roll",
    category: k_food,
    price: 8.95
)

Item.create(
    name: "BBQ Beef Sandwich",
    description: "Marinated beef grill to the perfection with onion, chives, top with shredded lettuce on house special sauce. Serving on butter toast French Roll",
    category: k_food,
    price: 8.95
)

Item.create(
    name: "CC Chicken Sandwich",
    description: "Marinated Spicy Chicken grill to the perfection with onion, bell pepper,hot jalapeno, Chives, shredded Carrot, shredded cabbagevon house special sauce. Serving on butter toast French Roll",
    category: k_food,
    price: 8.95
)

Item.create(
    name: "Tofu Sandwich K-Style",
    description: "Marinated grill to the perfection wi onion, pepper,hot jalapeno, chives, top with shredded lettuce on house special sauce. Serving on butter toast French Roll",
    category: k_food,
    price: 8.95
)

#============================ Salads ==============================

Item.create(
    name: "Caesar Salad",
    description: "Romaine, crouton, and Parmesan.",
    category: salads,
    price: 5.95
)

Item.create(
    name: "Garden Salad",
    description: "Romaine, olive, carrot, cucumber, mixed pepper, red cabbage, & tomato.",
    category: salads,
    price: 5.95
)

Item.create(
    name: "Greek Salad",
    description: "Romaine, olive, cucumber, mixed pepper, red cabbage, tomatoes, & feta.",
    category: salads,
    price: 7.50
)

Item.create(
    name: "Avocado Salad",
    description: "Romaine, red onion, tomatoes, carrot, cucumber, and avocado.",
    category: salads,
    price: 7.95
)

#======================= BBQ Baby Back Ribs Texan-Style =======================

Item.create(
    name: "1/2 BBQ Baby Back Ribs Only",
    category: ribs,
    price: 8.95
)

Item.create(
    name: "1/2 BBQ Baby Back Ribs Combo",
    description: "Served with homemade cornbread or french fries with saffron rice and a side salad.",
    category: ribs,
    price: 10.95
)

Item.create(
    name: "Whole BBQ Baby Back Ribs Only",
    category: ribs,
    price: 13.95
)

Item.create(
    name: "Whole BBQ Baby Back Ribs Combo",
    description: "Served with homemade cornbread or french fries with saffron rice and a side salad.",
    category: ribs,
    price: 15.95
)

#======================= Mediterranean BBQ =======================

Item.create(
    name: "Chicken Kebab",
    category: mediterranean_bbq,
    price: 7.95
)

Item.create(
    name: "Chicken Kebab Combo",
    category: mediterranean_bbq,
    price: 9.95
)


Item.create(
    name: "Pork Kebab",
    category: mediterranean_bbq,
    price: 7.95
)


Item.create(
    name: "Pork Kebab Combo",
    category: mediterranean_bbq,
    price: 9.95
)


Item.create(
    name: "Lamb Kebab",
    category: mediterranean_bbq,
    price: 8.95
)


Item.create(
    name: "Lamb Kebab Combo",
    category: mediterranean_bbq,
    price: 10.95
)


Item.create(
    name: "Beef Kebab",
    category: mediterranean_bbq,
    price: 9.95
)


Item.create(
    name: "Beef Kebab Combo",
    category: mediterranean_bbq,
    price: 11.95
)


Item.create(
    name: "Chicken Gyro",
    category: mediterranean_bbq,
    price: 8.95
)


Item.create(
    name: "Chicken Gyro Combo",
    category: mediterranean_bbq,
    price: 10.95
)


Item.create(
    name: "Lamb Gyro",
    category: mediterranean_bbq,
    price: 9.50
)

Item.create(
    name: "Lamb Gyro Combo",
    category: mediterranean_bbq,
    price: 11.50
)

Item.create(
    name: "Beef Gyro Combo",
    category: mediterranean_bbq,
    price: 11.95
)

Item.create(
    name: "Beef Gyro",
    category: mediterranean_bbq,
    price: 9.95
)

#======================= Shaved Ices =======================

Item.create(
    name: "The Original",
    description: "Shaved Ice produced by most advanced machine top with sweet red bean, 7 grain powder, condensed milk, sweet rice cake bits, topping with a scoop of Ice Cream and toasted almond slice",
    category: shaved_ices,
    price: 11.00
)

Item.create(
    name: "Mango Shaved Ice",
    description: "Frozen Mango Juice Shave Ice produced by most advanced machine top with fresh Mango with Mango Sherbert",
    category: shaved_ices,
    price: 13.00
)

Item.create(
    name: "Red Grapefruit Shaved Ice",
    description: "Frozen Red Grafruit Juice Shave Ice produced by most advanced machine top with sweet condesed milk, fresh Red Grapefruit with Mango Sherbert",
    category: shaved_ices,
    price: 13.00
)

#======================= Home-Baked Goods & Desserts =======================

#this item have options
Item.create(
    name: "Cheesecake",
    category: baked_good,
    price: 6.00
)

Item.create(
    name: "Tiramisu",
    category: baked_good,
    price: 6.00
)

Item.create(
    name: "Tres Leche",
    category: baked_good,
    price: 4.50
)

Item.create(
    name: "Pecan Pie",
    category: baked_good,
    price: 6.00
)

Item.create(   
    name: "Mini Lemon Cake",
    category: baked_good,
    price: 2.50
)

Item.create(
    name: "Banana Nut Cake",
    category: baked_good,
    price: 2.50,
)

Item.create(
    name: "Carrot Walnut Cake",
    category: baked_good,
    price: 2.50
)

Item.create(
    name: "Blueberry Orange Pecan Bread",
    category: baked_good,
    price: 2.50
)

Item.create(
    name: "Peanut Butter Coffee Cake",
    category: baked_good,
    price: 2.50
)

Item.create(
    name: "Buttermilk Coffee Cake",
    category: baked_good,
    price: 2.50
)

Item.create(
    name: "Corn Muffin",
    category: baked_good,
    price: 2.50
)

Item.create(
    name: "Chocolate Chip Cookies",
    category: baked_good,
    price: 3.25
)

Item.create(
    name: "Oatmeal Pecan Cookies",
    category: baked_good,
    price: 3.25
)

Item.create(
    name: "Biscotti",
    category: baked_good,
    price: 3.25
)

Item.create(
    name: "Mini Pecan Pie",
    category: baked_good,
    price: 3.25
)

Item.create(
    name: "Cheese Danish",
    category: baked_good,
    price: 3.25
)

Item.create(
    name: "Raspberry Cheese Danish",
    category: baked_good,
    price: 3.25
)

Item.create(
    name: "Apricot Cheese Danish",
    category: baked_good,
    price: 3.25
)

Item.create(
    name: "Apple Turnover",
    category: baked_good,
    price: 3.25
)

#======================= Ice Cream =======================

#this item have options
Item.create(
    name: "Frozen Yogurt",
    description: "Frozen yogurt made with only wholesome natural ingredients choose your favorite flavor",
    category: ice_cream,
    price: 5.00
)

#this item have options
Item.create(
    name: "Gelato ICE CREAM",
    description: "Frozen yogurt made with only wholesome natural ingredients choose your favorite flavor",
    category: ice_cream,
    price: 5.00
)

#======================= Hot Drinks =======================

Item.create(
    name: "Coffee",
    category: hot_drinks,
    price: 1.75
)

Item.create(
    name: "Americano",
    category: hot_drinks,
    price: 3.00
)

Item.create(
    name: "Caffe Latte",
    category: hot_drinks,
    price: 3.50
)

Item.create(
    name: "Medium Espresso",
    category: hot_drinks,
    price: 3.00
)

Item.create(
    name: "Matcha Latte",
    category: hot_drinks,
    price: 3.75
)

Item.create(
    name: "Cappuccino",
    category: hot_drinks,
    price: 3.50
)

Item.create(
    name: "Mocaccino",
    category: hot_drinks,
    price: 3.75
)

Item.create(
    name: "Caramel Macchiato",
    category: hot_drinks,
    price: 4.25
)

Item.create(
    name: "Affogato",
    category: hot_drinks,
    price: 4.50
)

Item.create(
    name: "Hot Tea",
    description: "Organic",
    category: hot_drinks,
    price: 1.75
)

Item.create(
    name: "Medium Hot Chocolate",
    category: hot_drinks,
    price: 2.50
)

#======================= Cold Drinks =======================

Item.create(
    name: "Iced Coffee",
    category: cold_drinks,
    price: 2.50
)

Item.create(
    name: "Iced Latte",
    category: cold_drinks,
    price: 4.00
)

Item.create(
    name: "Iced Matcha Latte",
    category: cold_drinks,
    price: 4.00
)

Item.create(
    name: "Iced Mocaccino",
    category: cold_drinks,
    price: 4.50
)

Item.create(
    name: "Iced Americano",
    category: cold_drinks,
    price: 3.50
)

Item.create(
    name: "Iced Machiato",
    category: cold_drinks,
    price: 4.50
)

#========================== Juices & Smoothies ===========================

Item.create(
    name: "Carrot Juice with Apple",
    category: juices_smoothies,
    price: 4.50
)

Item.create(
    name: "Carrot Juice with Kale",
    category: juices_smoothies,
    price: 4.50    
)

Item.create(
    name: "Carrot Juice with Beets",
    category: juices_smoothies,
    price: 4.50    
)

Item.create(
    name: "Carrot Juice with Celery",
    category: juices_smoothies,
    price: 4.50  
)

Item.create(
    name: "Orange Juice",
    description: "Fresh-squeezed.",
    category: juices_smoothies,
    price: 4.50
)

#this item has options
Item.create(
    name:"Make Your Own Juice",
    description: "Includes 2 ingredients. Add extra ingredients, acai powder, or power protein for an additional charge.",
    category: juices_smoothies,
    price: 4.50
)

#this item has options
Item.create(
    name: "Make Your Own Large Smoothie",
    description: "Includes 2 ingredients. Add extra ingredients, acai powder, or power protein for an additional charge.",
    category: juices_smoothies,
    price: 5.25  
)
