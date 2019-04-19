Rails.application.routes.draw do
  root 'home#index'
  get 'about', to: 'home#about'
  get 'contact', to: 'home#contact'
  get 'admin', to: 'admin#index'
  get 'customer/', to: "admin#customer"
  get 'seller/', to: "admin#seller"
  get 'sellerhome', to: 'admin#sellerhome'

  devise_for :users, controllers: {registrations: 'users/registrations'}
  resources :users do
    resources :coupons
    resources :profiles
    resources :products
  end
  resources :categories do
    resources :sub_categories
  end

  resources :brands

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
