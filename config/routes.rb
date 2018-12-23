Rails.application.routes.draw do
	devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
	devise_scope :user do  
		get '/users/sign_out' => 'devise/sessions#destroy'     
	end
	root 'home#index'
	get 'search', to: 'search#index'
	get 'admin/products', to: 'admin#products'
	get 'admin/orders', to: 'admin#orders'
	get 'admin/users', to: 'admin#users'
	resources :products
	resources :products do
		resources :variants, except: [:show]
	end
	resources :variants, except: [:show]
	resources :products do
		resources :comments
	end
	resources :cart_items
	get 'cart', to: 'cart#index'
	resources :wish_items
	get 'wish', to: 'wish#index'
	resources :orders
	resources :users
end
