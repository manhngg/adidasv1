class AddProductsToWishItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :wish_items, :product, foreign_key: true
  end
end
#rails g migration AddProductsToWishItems product:references