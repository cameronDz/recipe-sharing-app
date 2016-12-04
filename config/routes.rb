Rails.application.routes.draw do
  
  root 'main#welcome'
  get 'main/welcome'
  
  # Routing used on home page to get to pages in buttons
  get '/ingredient_search' => 'ingredients#search'
  get '/recipe_search' => 'recipes#search'
  get '/recipe_glossary' => 'recipes#glossary'
  
  #Routing for header
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
  
  resources :recipe do
    collection do
      match 'search' => 'recipe#search', via: [:get, :post], as: :search
    end
  end
  
end
