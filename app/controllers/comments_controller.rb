class CommentsController < ApplicationController
	def create
		@product = Product.find(params[:product_id])
		@comment = @product.comments.create(comment_params)
		redirect_to request.referrer
	end

	def destroy
		@product = Product.find(params[:product_id])
		@comment = @product.comments.find(params[:id])
		@comment.destroy
		redirect_to request.referrer
	end

	private
	def comment_params
		params.require(:comment).permit(:commenter, :body)
	end
end