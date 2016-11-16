require 'test_helper'

class IngredientsRecipesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ingredients_recipe = ingredients_recipes(:one)
  end

  test "should get index" do
    get ingredients_recipes_url
    assert_response :success
  end

  test "should get new" do
    get new_ingredients_recipe_url
    assert_response :success
  end

  test "should create ingredients_recipe" do
    assert_difference('IngredientsRecipe.count') do
      post ingredients_recipes_url, params: { ingredients_recipe: { ingredient_id: @ingredients_recipe.ingredient_id, recipe_id: @ingredients_recipe.recipe_id } }
    end

    assert_redirected_to ingredients_recipe_url(IngredientsRecipe.last)
  end

  test "should show ingredients_recipe" do
    get ingredients_recipe_url(@ingredients_recipe)
    assert_response :success
  end

  test "should get edit" do
    get edit_ingredients_recipe_url(@ingredients_recipe)
    assert_response :success
  end

  test "should update ingredients_recipe" do
    patch ingredients_recipe_url(@ingredients_recipe), params: { ingredients_recipe: { ingredient_id: @ingredients_recipe.ingredient_id, recipe_id: @ingredients_recipe.recipe_id } }
    assert_redirected_to ingredients_recipe_url(@ingredients_recipe)
  end

  test "should destroy ingredients_recipe" do
    assert_difference('IngredientsRecipe.count', -1) do
      delete ingredients_recipe_url(@ingredients_recipe)
    end

    assert_redirected_to ingredients_recipes_url
  end
end
