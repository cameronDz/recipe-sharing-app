class Ingredient < ApplicationRecord
  validates :name,  presence: true, length: { maximum: 50 }
  validates :category, presence: true, length: { maximum: 50 }
  
  has_many :ingredients_recipes
  has_many :recipes, :through => :ingredients_recipes
  

end
