class Recipe < ApplicationRecord
  
  validates :name,  presence: true, length: { maximum: 50 }
  validates :instructions, presence: true, length: {minimum: 5, maximum: 1000 }
  validate :must_have_at_least_one
  
  has_many :ingredients_recipes
  has_many :ingredients, :through => :ingredients_recipes
  
  private

  def must_have_at_least_one
    errors.add(:base, 'You must select at least one ingredient') unless ingredient_ids.count > 0
  end
      
end
