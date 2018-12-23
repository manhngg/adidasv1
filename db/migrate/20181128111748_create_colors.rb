class CreateColors < ActiveRecord::Migration[5.2]
  def change
    create_table :colors do |t|
      t.text :name
    end
  end
end
#rails generate model Color color_name:text --no-timestamps
