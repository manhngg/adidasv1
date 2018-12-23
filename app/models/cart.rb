class Cart < ApplicationRecord
	has_many :cart_items
	# has_many :products, :through => :cart_items
	

	def add_product(product_params)

		current_item = cart_items.find_by(variant_id: product_params[:product][:variant_id])

		if current_item
			product_params[:product][:action] == 'edit' ?
			current_item.quantity = product_params[:product][:quantity].to_i :
			current_item.quantity += product_params[:product][:quantity].to_i
			current_item.save
		else
			new_item = cart_items.create(product_id: product_params[:product][:product_id],variant_id: product_params[:product][:variant_id], quantity: product_params[:product][:quantity], cart_id: self.id)
		end
		
		new_item
	end
end
