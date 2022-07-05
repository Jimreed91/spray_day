Rails.application.routes.draw do

  get 'farm/new'
  get 'farm/create'
  get 'farm/show'
  get 'farm/index'
  # get 'pages/main'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/pages', to: 'pages/#main'
  root to: 'pages#main'

  get 'crops/new', to: 'crops#new'
  get 'crops/:id', to: 'crops#show'
  post '/crops', to: 'crops#create'

end
