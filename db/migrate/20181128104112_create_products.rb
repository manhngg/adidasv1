class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.text :name
      t.text :description_h5
      t.text :description_p
      t.text :specifications
      t.text :care

      t.timestamps
    end
  end
end

#rails generate model Product name:text description_h5:text description_p:text specifications:text care:text

