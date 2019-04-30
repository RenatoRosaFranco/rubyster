# frozen_string_literal: true
Rails.application.routes.draw do
  namespace :dashboard do
    get 'profile/index'
  end
  namespace :dashboard do
    get 'home/index'
  end
 	# Authentication
  devise_for :users

  # Application
  root to: 'home#index'
  resources :groups

  # Dashboard
  namespace :dashboard do
  	get '/', to: 'home#index'
  	resources :profiles
  end
end
