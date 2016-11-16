class Ingredient < ApplicationRecord
  attr_accessible :name, :type
  has_many :recipes, :through => :ingredients_recipes
end
