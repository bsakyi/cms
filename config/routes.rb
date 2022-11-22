Rails.application.routes.draw do

  root "demo#index"

  get 'demo/index'
  get '/hello', to: 'demo#hello'

  
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #match ':controller(/:action(/:id))', :via => :get
end
