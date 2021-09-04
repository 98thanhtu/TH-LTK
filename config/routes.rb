Rails.application.routes.draw do
  root to: 'pages#home'
  get 'pages/contact'
  # get "/pages/:page", to: "pages#show"

  namespace :students do
    resources :notis, only: %w[index show]
    resources :reviews, only: %w[index show]
  end

  namespace :teachers do
    resources :notis
    resources :reviews
    resources :students
  end

  resource :teacher, only: [:edit, :update, :show]
  resource :student, only: [:edit, :update, :show]
  
  devise_for :admins
  devise_for :teachers
  devise_for :students
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
