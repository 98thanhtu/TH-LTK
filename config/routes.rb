Rails.application.routes.draw do
  root to: 'pages#home'
  get 'pages/contact'
  get "/pages/:page", to: "pages#show"

  namespace :students do
    # resources :rankings, only: %w[index]
    resources :notis, only: %w[index show]
    resources :reviews, only: %w[index show]
    resources :bookings, only: %w[index show edit update destroy] do
      collection do
        get :historical_bookings
      end
    end
    resources :stores, only: %w[index show edit]
  end
  
  namespace :teachers do
    resources :bookings, only: %w[index show update edit] do
      collection do
        get :confirmed_bookings
      end
      member do
        get :complete_booking        
        get :confirm_booking
      end
    end
    resources :products
    resources :notis
    resources :reviews
    resources :students, only: %w[index show update edit update]
    resources :rankings, only: %w[index update]
  end

  resource :teacher, only: %w[edit update show]
  resource :student, only: %w[edit update show]
  
  devise_for :admins
  devise_for :teachers
  devise_for :students
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
