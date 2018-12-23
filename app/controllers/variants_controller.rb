class VariantsController < ApplicationController
	# before_action :authenticate_user!, :except => [:index, :show]
	# before_action :authenticate_admin, :except => [:index, :show] 
	#only: [:new, :edit, :create, :update, :destroy]
	
	def index
		@variants = Variant.all
	end

	def show
		@variant = Variant.find(params[:product_id])
	end

	def new
		if current_user.try(:admin?) 
			@variant = Variant.new
		end
	end

	def edit
		if current_user.try(:admin?) 
			@variant = Variant.find(params[:id])
		end
	end

	def create
		@variant = Variant.new(variant_params)
		flash[:success] = "Thanh cong"
		if @variant.save
			flash[:success] = "thanh cong"
			redirect_to request.referrer
		else
			flash[:success] = "khong thanh cong"
			redirect_to request.referrer
		end
	end
	
	def update
		@variant = Variant.find(params[:id])
		
		if @variant.update(variant_params)
			redirect_to request.referrer
		else
			redirect_to request.referrer
		end
	end
	
	def destroy
		@variant = Variant.find(params[:id])
		@variant.destroy
		
		redirect_to request.referrer
	end
	
	private
	def variant_params
		params.require(:variant).permit(:product_id, :color_id, :price, :originalprice, :sku, :stock, :avatar, :hover, images: [])
	end

end

