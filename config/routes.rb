Rails.application.routes.draw do
  get 'brewers/index'
  get 'brewers/show'
  get 'brewers/edit'
  get 'brewers/new'
  root :to => 'pages#home'
  resources :users, :only => [:index, :new, :create]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :recipes #, :only => [:new, :create, :show]
  resources :brewers
  resources :styles, :only => [:index, :new, :create, :show]
end
