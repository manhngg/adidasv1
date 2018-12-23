class CreateVariants < ActiveRecord::Migration[5.2]
  def change
    create_table :variants do |t|
    	t.float :price 
    	t.float :originalprice 
    	t.text :sku 
    	t.integer :stock 
    end
  end
end

#rails generate model Variant price:float originalprice:float sku:text stock:integer
