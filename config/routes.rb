Rails.application.routes.draw do
  devise_for :alumni
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :alumni
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "alumni#index"
end
