class AddAddressToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :address, :string
  end
end
#rails g migration AddAddressToUsers address:string
