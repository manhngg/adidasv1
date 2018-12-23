class CreateSports < ActiveRecord::Migration[5.2]
  def change
    create_table :sports do |t|
      t.text :name
    end
  end
end
#rails generate model Sport name:text --no-timestamps
