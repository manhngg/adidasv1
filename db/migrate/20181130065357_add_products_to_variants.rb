class AddProductsToVariants < ActiveRecord::Migration[5.2]
  def change
    add_reference :variants, :product, foreign_key: true
  end
end
