json.array!(@ingredients_recipes) do |ingredients_recipe|
  json.extract! ingredients_recipe, :id, :recipe_id, :ingredient_id
  json.url ingredients_recipe_url(ingredients_recipe, format: :json)
end
