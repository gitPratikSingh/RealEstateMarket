Rails.application.routes.draw do
  resources :houses
  resources :realtors
  get 'start_page/index'

  resources :house_hunters
  resources :realtor

  root 'start_page#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
