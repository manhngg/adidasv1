class CartItemsController < ApplicationController
	before_action :authenticate_user!
	before_action :set_cart, only:[:create, :destroy]
	before_action :set_cart_item, only:[:destroy]

	def create
		@cart.add_product(params)

		if @cart.save
			redirect_to request.referrer
		else
			flash[error] = 'Co van de khi tem san pham nay vao tui'
			
		end
	end

	def destroy
		@cart_item.destroy
		redirect_to request.referrer
	end


	private

		def current_cart 
			@current_cart = Cart.find(session[:cart_id])
		end

		def set_cart_item
			@cart_item = CartItem.find(params[:id])
		end

		def cart_item_params
			params.require(:cart_item).permit(:product_id,:variant_id, :cart_id, :quantity)
		end


end
