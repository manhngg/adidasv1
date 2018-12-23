class CreateWishItems < ActiveRecord::Migration[5.2]
  def change
    create_table :wish_items do |t|
    end
  end
end
#rails generate model WishItems --no-timestamps
