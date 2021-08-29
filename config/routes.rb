Rails.application.routes.draw do
  devise_for :teachers
  devise_for :students
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
