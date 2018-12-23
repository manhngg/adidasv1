class CreateWishes < ActiveRecord::Migration[5.2]
  def change
    create_table :wishes do |t|
    end
  end
end
#rails generate model Wish --no-timestamps
