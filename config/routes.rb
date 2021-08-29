Rails.application.routes.draw do
  devise_for :admins
  namespace :students do
    resources :notis, only: %w[index show]
  end
  namespace :teachers do
    resources :notis
  end
  devise_for :teachers
  devise_for :students
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
