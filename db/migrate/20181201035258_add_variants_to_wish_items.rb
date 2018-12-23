class AddVariantsToWishItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :wish_items, :variant, foreign_key: true
  end
end
