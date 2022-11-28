Rails.application.routes.draw do
  get 'sections', to: 'sections#index'
  get 'sections/show'
  get 'sections/new'
  get 'sections/edit'

  get 'pages', to: 'pages#index'
  get 'pages/show'
  get 'pages/new'
  get 'pages/edit'
  resources :copies
  resources :subjects 
  # get '/subjects', to: 'subjects#index'
  # get 'subjects/show'
  # get '/subjects/new', to: 'subjects#new'
  # get 'subjects/edit'
  # get 'subjects/delete'

  root "demo#index"

  get 'demo/index'
  get '/hello', to: 'demo#hello'

  
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  # match ':controller(/:action(/:id))', :via => :get
end
