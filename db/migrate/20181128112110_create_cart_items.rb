class CreateCartItems < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_items do |t|
    end
  end
end
#rails generate model CartItems --no-timestamps