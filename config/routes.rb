Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  get 'users/reset_user_type' => 'users#reset_user_type', as: 'reset_user_type'

  resources :users
  resources :inquiries
  resources :houses
  resources :realtors
  get 'start_page/index'

  resources :house_hunters
  resources :realtor

  root 'start_page#index'

  resources :admins
  resources :real_state_companies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
