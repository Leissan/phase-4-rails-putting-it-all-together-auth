Rails.application.routes.draw do
  resources :users
  resources :recipes
  post '/signup', to: 'users#create' 

  post '/login', to: 'sessions#create'

  get '/me', to: 'users#show'

  delete '/logout', to: 'sessions#destroy'
  get '/recipes/', to: 'recipes#get'
  
end

