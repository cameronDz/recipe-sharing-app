require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @recipe = Recipe.new(name: "Tacos", instructions: "Add meat")
  end

  test "should be valid" do
    assert @recipe.valid?
  end
  
  test "name should be present" do
    @recipe.name = "     "
    assert_not @recipe.valid?
  end
  
  test "instructions should be present" do
    @recipe.instructions = "     "
    assert_not @recipe.valid?
  end
  
  test "name should not be too long" do
    @recipe.name = "a" * 51
    assert_not @recipe.valid?
  end
  
  test "name should not be too long" do
    @recipe.instructions = "a" * 1001
    assert_not @recipe.valid?
  end
end