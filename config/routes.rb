Rails.application.routes.draw do
  root 'home#index'
  get 'admin', to: 'admin#index'
  get 'customer/', to: "admin#customer"
  get 'seller/', to: "admin#seller"

  devise_for :users, controllers: {registrations: 'users/registrations'}
  resources :users do
    resources :profiles
  end
  resources :categories do
    resources :sub_categories
  end

  resources :brands
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
