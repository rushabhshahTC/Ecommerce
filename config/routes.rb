Rails.application.routes.draw do
  root 'home#index'
  devise_for :users, controllers: {registrations: 'users/registrations'}
  resources :users do
    resources :profiles
  end
  get 'admin', to: 'admin#index'
  get 'customer/', to: "admin#customer"
  post 'customer/', to: "admin#customer"
  get 'seller/', to: "admin#seller"
  post 'seller/', to: "admin#seller"
  resources :categories do
    resources :sub_categories
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
