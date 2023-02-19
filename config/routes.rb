# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'pages#main'
  devise_for :users

  resources :products
  resources :crops


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
