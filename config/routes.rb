Rails.application.routes.draw do
  resources :categories
  resources :productcategories
  resources :orders
  resources :order_items
  resources :products
  resources :users do 
    collection do
      post '/login', to: 'users#login'
    end
  end
  resources :cabbage_patches
  resources :customs
  resources :corporates
  resources :get_in_touches
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
