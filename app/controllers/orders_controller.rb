class OrdersController < ApplicationController
	before_action :authenticate_user!
	def index
		@orders = Order.all
	end

	def show
		@order = Order.find(params[:id])
	end

	def new
		@order = Order.new
	end

	def edit
		@order = Order.find(params[:id])
	end

	def create
		@order = Order.new(order_params)

		if @order.save 
			redirect_to orders_path
		else
			render 'new'
		end
	end
	
	def update
		@order = Order.find(params[:id])
		
		if @order.update(order_params)
			redirect_to admin_orders_path
		else
			render 'edit'
		end
	end
	
	def destroy
		@order = Order.find(params[:id])
		@order.destroy
		
		redirect_to request.referrer
	end
	
	private
	def order_params
		params.require(:order).permit(:user_id, :address, :phone, :method, :status, :details)
	end
	def filtering_params(params)
		params.slice(:status, :location, :starts_with)
	end
end