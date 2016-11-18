#main_controller.rb - for recipe application
class MainController < ApplicationController
  
  # welcome message - fetches initial number of recipes
  def welcome
      @num_recipes = Recipe.count
      @num_ingredients = Ingredient.count
  end
  
end
