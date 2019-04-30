# frozen_string_literal: true
Rails.application.routes.draw do
 	# Authentication
 	# @implemented
  devise_for :users

  # Application
  # @implemented
  root to: 'home#index'
  resources :groups

  # Dashboard
  # @implemented
  namespace :dashboard do
  	get '/', to: 'home#index'
  	resources :profiles
  	resources :accounts
  end
end
