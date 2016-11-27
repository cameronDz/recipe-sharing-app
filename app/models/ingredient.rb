class Ingredient < ApplicationRecord
  has_many :ingredients_recipes
  has_many :recipes, :through => :ingredients_recipes
  
  def ingredient_name
    "#{name}"
  end
end
