class AddFranchiseToProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :franchise, foreign_key: true
  end
end
#rails g migration AddFranchiseToProducts franchise:references
