# frozen_string_literal: true
Rails.application.routes.draw do
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
