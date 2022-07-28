# frozen_string_literal: true

Rails.application.routes.draw do
  get 'shopping_list/index'
  get 'public_recipes/index'
  resources :recipe_foods
  resources :foods
  resources :recipes
  devise_for :users
  get 'about/index'
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'home#index'
end
