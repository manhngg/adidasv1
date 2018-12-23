class AddWishesToWishItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :wish_items, :wish, foreign_key: true
  end
end
#rails g migration AddWishesToWishItems wish:references
