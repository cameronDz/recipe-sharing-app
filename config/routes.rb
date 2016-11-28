Rails.application.routes.draw do
  
  root 'main#welcome'
  
  # Routing used on home page to get to pages in buttons
  get '/ingredient_search' => 'ingredients#search'
  get '/recipe_search' => 'recipes#search'
  get '/recipe_glossary' => 'recipes#glossary'
  
  # Routing used for footer
  get 'main/welcome'
  get '/contact' => 'main#contact'
  get '/about' => 'main#about'
  
  # Used in AJAX for recipes
  post '/recipe_search', to: 'recipes#search'
  post '/recipe_gloassary', to: 'recipes#glossary'
  
  # db elements 
  resources :ingredients
  resources :recipes
  resources :ingredients_recipes
  
end
