class RemoveColumnColorIdOfProducts < ActiveRecord::Migration[5.2]
  def change
  	remove_column :products, :color_id
  end
end
