Rails.application.routes.draw do
  root to: 'pages#home'
  get 'pages/contact'
  namespace :students do
    get 'reviews/show'
    get 'reviews/index'
  end
  devise_for :admins
  namespace :students do
    resources :notis, only: %w[index show]
    resources :reviews, only: %w[index show]
  end
  namespace :teachers do
    resources :notis
    resources :reviews
  end
  devise_for :teachers
  devise_for :students
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
