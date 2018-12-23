class AddProductsToCartItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :cart_items, :product, foreign_key: true
  end
end
#rails g migration AddProductsToCartItems product:references