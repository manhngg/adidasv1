class WishItemsController < ApplicationController
	before_action :authenticate_user!
	before_action :set_wish, only:[:create, :destroy]
	before_action :set_wish_item, only:[:destroy]

	def create
		
		@wish.add_product(params)

		if @wish.save
			redirect_to request.referrer
		else
			flash[error] = 'Co van de khi tem san pham nay vao danh sach yeu thich'
			
		end
	end

	def destroy
		@wish_item.destroy
		redirect_to request.referrer
	end


	private

		def set_wish_item
			@wish_item = WishItem.find(params[:id])
		end

		def wish_item_params
			params.require(:wish_item).permit(:variant_id, :product_id, :wish_id)
		end


end
