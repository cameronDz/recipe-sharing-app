class Recipe < ApplicationRecord
  
  validates :name,  presence: true, length: { maximum: 50 }
  validates :instructions, presence: true, length: { maximum: 1000 }
  
  has_many :ingredients_recipes
  has_many :ingredients, :through => :ingredients_recipes
  #
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
end
