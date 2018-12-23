class AddProducttypeToProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :producttype, foreign_key: true
  end
end
#rails g migration AddProducttypeToProducts producttype:references
