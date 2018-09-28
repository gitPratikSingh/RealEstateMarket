Rails.application.routes.draw do
  resources :interest_lists
  devise_for :users, controllers: { registrations: 'users/registrations' }
  get 'users/reset_user_type' => 'users#reset_user_type', as: 'reset_user_type'
  get 'house_hunters/set_user_type/:id' => 'house_hunters#set_user_type', as: 'set_type_house_hunter'
  get 'realtors/set_user_type/:id' => 'realtors#set_user_type', as: 'set_type_realtor'
  get 'admins/set_user_type/:id' => 'admins#set_user_type', as: 'set_type_admin'
  resources :users

  resources :houses do
    resources :inquiries
  end

  resources :realtors
  get 'start_page/index'

  resources :house_hunters do
    resources :inquiries
  end
  resources :house_hunters do
    resources :interest_lists
  end

  resources :inquiries

  root 'start_page#index'

  resources :admins
  resources :real_estate_companies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
