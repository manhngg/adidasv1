class AddLastNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :lastname, :string
  end
end
#rails generate migration AddLastNameToUsers lastname:string
