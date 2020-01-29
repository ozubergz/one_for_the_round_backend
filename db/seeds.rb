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
mexican_grill = Category.create(name: "Maxican Grill")
mexican_sides = Category.create(name: "Mexican Sides")
savory_crepe = Category.create(name: "Savory Crepe")
sweet_crepe = Category.create(name: "Sweet Crepe")
family_packs = Category.create(name: "Family Packs")
bahn_mi = Category.create(name: "Bahn Mi Sandwiches")
k_food = Category.create(name: "K-Food Sandwiches")

salads = Category.create(name: "Salads")
baked_good = Category.create(name: "Baked Goods")
gelato = Category.create(name: "Gelato Ice Cream")
frozen_yogurt = Category.create(name: "Frozen Yogurt")
hot_drinks = Category.create(name: "Hot Drinks")
cold_drinks = Category.create(name: "Cold Drinks")
smoothies = Category.create(name: "Juice moothie")

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