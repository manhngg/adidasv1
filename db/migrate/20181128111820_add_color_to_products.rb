class AddColorToProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :color, foreign_key: true
  end
end
#rails g migration AddColorToProducts color:references

