class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.text :name
    end
  end
end
#rails generate model Category name:text --no-timestamps
