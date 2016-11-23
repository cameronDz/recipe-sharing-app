# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  recipe = Recipe.create({name: "Mexican Stew", instruction: "cook meat add chili powder"})
  recipe.ingredient.create(name: "Chili Powder", category: "Spice")
  recipe.ingredient.create(name: "Ground Beef", category: "Meat")
  recipe.ingredient.create(name: "Onions", category: "Vegetable")

