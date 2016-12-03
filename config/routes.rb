Rails.application.routes.draw do
  
  #get 'sessions/new'

  root 'main#welcome'
  
  # Routing used on home page to get to pages in buttons
  get '/ingredient_search' => 'ingredients#search'
  get '/recipe_search' => 'recipes#search'
  get '/recipe_glossary' => 'recipes#glossary'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get 'signup' => 'users#new'
  
  # Routing used for footer
  get 'main/welcome'
  get '/contact' => 'main#contact'
  get '/about' => 'main#about'
  get '/help' => 'main#help'
  
  # Used in AJAX for recipes
  post '/recipe_search', to: 'recipes#search'
  post '/recipe_glossary', to: 'recipes#glossary'
  
  # db elements 
  resources :ingredients
  resources :recipes
  resources :ingredients_recipes
  resources :users
  
end
