class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
    end
  end
end
#rails generate model Cart --no-timestamps
