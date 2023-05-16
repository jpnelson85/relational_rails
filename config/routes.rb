Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/races', to: 'races#index'
  get '/races/:id', to: 'races#show'
  get 'races/:id/drivers', to: 'races#drivers_show'
  
  get '/drivers', to: 'drivers#index'
  get '/drivers/:id', to: 'drivers#show'
  
end
