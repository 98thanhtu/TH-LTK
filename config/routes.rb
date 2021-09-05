Rails.application.routes.draw do
  root to: 'pages#home'
  get 'pages/contact'
  get "/pages/:page", to: "pages#show"

  namespace :students do
    resources :rankings, only: :index
    resources :notis, only: %w[index show]
    resources :reviews, only: %w[index show]
  end
  
  namespace :teachers do
    resources :notis
    resources :reviews
    resources :students
    resources :rankings, only: %w[index updates]
  end

  resource :teacher, only: %w[edit update show]
  resource :student, only: %w[edit update show]
  
  devise_for :admins
  devise_for :teachers
  devise_for :students
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
