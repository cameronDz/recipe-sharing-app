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