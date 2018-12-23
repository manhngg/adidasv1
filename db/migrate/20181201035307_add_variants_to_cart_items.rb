class AddVariantsToCartItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :cart_items, :variant, foreign_key: true
  end
end
