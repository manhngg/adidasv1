class SearchController < ApplicationController
	def index
		if !params[:q].nil? then
			@q = Product.ransack(params[:q])
			@products = @q.result(distinct: true) 
		end
	end
end
