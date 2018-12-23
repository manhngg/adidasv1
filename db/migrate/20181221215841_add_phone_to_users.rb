class AddPhoneToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :phone, :string
  end
end
#rails g migration AddPhoneToUsers phone:string