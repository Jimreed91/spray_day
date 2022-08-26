# frozen_string_literal: true

Rails.application.routes.draw do
  post 'products', to: 'products#create'
  get 'products/new', to: 'products#new'
  get 'products/:id', to: 'products#show', as: :product
  get 'products/', to: 'products#index'
  get 'products/:id/edit', to: 'products#edit'
  delete 'products/:id', to: 'products#destroy'
  patch 'products/:id', to: 'products#update'

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/pages', to: 'pages/#main'
  root to: 'pages#main'

  get 'crops/new', to: 'crops#new'
  get 'crops/:id', to: 'crops#show', as: :crop
  post '/crops', to: 'crops#create'
  get '/crops', to: 'crops#index'
  get 'crops/:id/edit', to: 'crops#edit'
  patch 'crops/:id', to: 'crops#update'
  delete 'crops/:id', to: 'crops#destroy'

  get 'farms/new', to: 'farms#new'
  get 'farms/:id', to: 'farms#show', as: :farm
  post 'farms', to: 'farms#create'
  get 'farms/', to: 'farms#index'

  get 'sprayers/new', to: 'sprayers#new'
  post 'sprayers', to: 'sprayers#create'
  get 'sprayers/:id', to: 'sprayers#show', as: :sprayer
  get 'sprayers', to: 'sprayers#index'
  get 'sprayers/:id/edit', to: 'sprayers#edit'
  patch 'sprayers/:id', to: 'sprayers#update'
  delete 'sprayers/:id', to: 'sprayers#destroy'

  resources :spray_programs do
    resource :pdf_download, only: [:show]
  end
end
