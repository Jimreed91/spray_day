# frozen_string_literal: true

Rails.application.routes.draw do

  post 'products', to: 'productss#create'
  get 'products/new', to: 'products#new'
  get 'products/:id', to: 'products#show', as: :product
  get 'products/', to: 'products#index'
  get 'products/:id/edit', to: 'products#edit', as: :edit_product
  delete 'products/destroy', to: 'products#destroy'
  patch 'products/:id', to: 'products#update'

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/pages', to: 'pages/#main'
  root to: 'pages#main'

  get 'crops/new', to: 'crops#new'
  get 'crops/:id', to: 'crops#show', as: :crop
  post '/crops', to: 'crops#create'
  get '/crops', to: 'crops#index'
  get 'crops/:id/edit', to: 'crops#edit', as: :edit_crop
  patch 'crops/:id', to: 'crops#update'
  delete 'crops/:id', to: 'crops#destroy'

  get 'farms/new', to: 'farms#new'
  get 'farms/:id', to: 'farms#show', as: :farm
  post 'farms', to: 'farms#create'
  get 'farms/', to: 'farms#index'
end
