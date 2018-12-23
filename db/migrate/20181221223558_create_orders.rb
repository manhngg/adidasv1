class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :address
      t.string :phone
      t.string :method
      t.string :status
      t.string :details

      t.timestamps
    end
  end
end

#rails g model Order address:string phone:string method:string status:string details:string
