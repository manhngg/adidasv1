class CreateFranchises < ActiveRecord::Migration[5.2]
  def change
    create_table :franchises do |t|
      t.text :name
    end
  end
end
#rails generate model Franchise name:text --no-timestamps
