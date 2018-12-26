class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	before_action :configure_permitted_parameters, if: :devise_controller?
	before_action :set_cart
	before_action :set_wish
	add_breadcrumb "Trang chủ", :root_path

	private
	
	def set_cart 
		current_user ? session[:cart_id] = current_user.id : ''
		@cart = Cart.find(session[:cart_id])
	rescue ActiveRecord::RecordNotFound
		@cart = Cart.first
		session[:cart_id] = @cart.id
	end

	def set_wish 
		current_user ? session[:wish_id] = current_user.id : ''
		@wish = Wish.find(session[:wish_id])
	rescue ActiveRecord::RecordNotFound
		@wish = Wish.first
		session[:wish_id] = @wish.id
	end

	protected
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :lastname, :email, :password)}

		devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :lastname, :address, :phone, :email, :password, :current_password)}

	end
end
