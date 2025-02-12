Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   # User Routes
   resources :users
   resources :exercises
   resources :logs

   post '/signup', to: 'users#create'
   get '/me', to: 'users#show'
 
   # Session Routes
   post '/login', to: 'sessions#create'
   delete '/logout', to: 'sessions#destroy'
end
