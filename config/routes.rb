Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'users/registrations' }
  get 'users/reset_user_type' => 'users#reset_user_type', as: 'reset_user_type'
  get 'house_hunters/set_user_type/:id' => 'house_hunters#set_user_type', as: 'set_type_house_hunter'
  get 'realtors/set_user_type/:id' => 'realtors#set_user_type', as: 'set_type_realtor'
  get 'admins/set_user_type/:id' => 'admins#set_user_type', as: 'set_type_admin'
  get 'houses/search' => 'houses#search', as: 'search_houses'
  get 'house_hunters/:hh_id/interest_list/:id/add_to_list/:house_id' => 'interest_lists#add_to_list', as: 'add_to_list'
  get 'house_hunters/:hh_id/inquiries/new/:house_id' => 'inquiries#create', as: 'new_house_hunter_inquiry_path'
  resources :users
6
  # resources :houses do
  #   resources :inquiries
  # end

  resources :houses do
    resource :potential_buyers_lists
  end

  resources :realtors


  resources :house_hunters do
    resources :inquiries
  end
  resources :house_hunters do
    resources :interest_lists
  end

  resources :inquiries

  get 'start_page/index'
  root 'start_page#index'

  resources :admins
  resources :real_estate_companies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
