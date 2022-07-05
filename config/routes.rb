Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/pages', to: 'pages/#main'
  root to: 'pages#main'

  get 'crops/new', to: 'crops#new'
  get 'crops/:id', to: 'crops#show', as: :crop
  post '/crops', to: 'crops#create'


  get 'farms/new', to: 'farms#new'
  get 'farms/:id', to: 'farms#show', as: :farm
  post 'farms', to: 'farms#create'
  get 'farms/index', to: 'farms#index'


end
