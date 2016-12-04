# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
  recipe = Recipe.create({name: "Mexican Stew", instructions: "cook meat add chili powder"})
  recipe.ingredients.create(name: "Chili Powder", category: "Spice")
  recipe.ingredients.create(name: "Ground Beef", category: "Meat")
  recipe.ingredients.create(name: "Onions", category: "Vegetable")

  recipe = Recipe.create({name: "Chicken Soup", instructions: "boil water, cook chicken"})
  recipe.ingredients.create(name: "Chicken", category: "Meat")
  recipe.ingredients.create(name: "Water", category: "Liquid")
  recipe.ingredients.create(name: "Celery", category: "Vegetable")
  
  # recipes with no ingredients for testing search
  recipe = Recipe.create({name: "Cake", instructions: "make batter, bake, add frosting"})
  recipe = Recipe.create({name: "Pie", instructions: "make crust, make filling, bake"})
  recipe = Recipe.create({name: "Yogurt", instructions: "get milk, do something, let sit"})
  recipe = Recipe.create({name: "Cheese", instructions: "get milk, do something"})
  recipe = Recipe.create({name: "Hambuger", instructions: "get patty, grill, put on bun"})
  recipe = Recipe.create({name: "Ice cream", instructions: "get milk, do something, freeze"})
  
  # more cool ingrientless recipes
  recipe = Recipe.create({name: "Rocky Mountain Savage Pie", instructions: "Go for a long hike into the wilderness. There your hunger for knownledge, not nutrience, will be satisfied."})
  recipe = Recipe.create({name: "Spicy Dice Octopus", instructions: "Go in to the ocean. Grab yourself an Octopus. You take that slimy octopus and you dump chili powder on him. And you Eat that octopus!"})
  recipe = Recipe.create({name: "Jungle Coffee", instructions: "Find a large forest, preferable inhabited by wild animals. Get water from that forest and use that water to brew some coffee."})
  recipe = Recipe.create({name: "Gainz", instructions: "Just do werk, and eat boiled chicken baby."})
  recipe = Recipe.create({name: "Zootopia Lamb", instructions: "Get salt, pepper, and gravy. Smother a live baby lamb in this mixture concoction. Eat the lamb, alive."})
  recipe = Recipe.create({name: "X Coffee", instructions: "Brew coffee with Mountain Dew."})