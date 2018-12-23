class AddGenderToProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :gender, foreign_key: true
  end
end
