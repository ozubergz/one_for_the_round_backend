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
cold_sandwiches = Category.create(name: "Cold Sandwiches")
salads = Category.create(name: "Salads")
peruvian_chicken = Category.create(name: "Peruvain BBQ Chicken")
sweet_crepe = Category.create(name: "Sweet Crepe")
savory_crepe = Category.create(name: "Savory Crepe")
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





