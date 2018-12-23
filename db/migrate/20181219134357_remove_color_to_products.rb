class RemoveColorToProducts < ActiveRecord::Migration[5.2]
  def change
  	remove_foreign_key :products, :colors

  end
end
