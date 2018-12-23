class CreateProducttypes < ActiveRecord::Migration[5.2]
  def change
    create_table :producttypes do |t|
      t.text :name
    end
  end
end
#rails generate model Producttype name:text --no-timestamps
