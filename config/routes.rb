Rails.application.routes.draw do
  get 'crops/index'
  get 'crops/show'
  get 'crops/new'
  get 'crops/create'
  get 'crops/edit'
  get 'crops/destroy'
  # get 'pages/main'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/pages', to: 'pages/#main'
  root to: 'pages#main'

end
