# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'pages#main'
  devise_for :users

  resources :products
  resources :crops
  resources :sprayers

  resources :spray_programs do
    resource :pdf_download, only: [:show]
  end
end
