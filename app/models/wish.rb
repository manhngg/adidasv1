class Wish < ApplicationRecord
	has_many :wish_items
	# has_many :products, :through => :wish_items
	

	def add_product(product_params)

		current_item = wish_items.find_by(variant_id: product_params[:product][:variant_id])

		if current_item
			current_item.destroy
		else
			new_item = wish_items.create(product_id: product_params[:product][:product_id],variant_id: product_params[:product][:variant_id], wish_id: self.id)
		end
		
		new_item
	end

	
end
