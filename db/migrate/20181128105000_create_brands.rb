class CreateBrands < ActiveRecord::Migration[5.2]
  def change
    create_table :brands do |t|
      t.text :name
    end
  end
end
#rails generate model Brand name:text --no-timestamps