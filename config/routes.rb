Rails.application.routes.draw do

	devise_for :staffs
	devise_for :users
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	root to: "items#index"

	namespace :v1 do
		post 'login', 		to: 'auth#login'
		post 'signup', 		to: 'auth#signup'

		get 'categories', 		to: 'categories#index'
		get 'categories/:id', 	to: 'categories#show_items'
		get 'items/:id', 		to: 'items#show'

		resources :addresses
		resources :carts
		resources :coupons
		resources :payment_modes
		resources :orders
	end

	namespace :admin do
		resources :logins, :path => "login"
		resources :signups, :path => "signup"
	end


	namespace :staff do
		resources :logins, :path => "login"
		resources :signups, :path => "signup"
	end

	resources :logins, :path => "login"
	resources :signups, :path => "signup"
	resources :roles
	resources :addresses
	resources :branches
	resources :categories
	resources :images
	resources :items
	resources :toppings
	resources :offers
	resources :coupons
	resources :carts
	resources :payment_modes
	resources :orders
	resources :settings

end
