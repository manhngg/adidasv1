class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
#rails generate model Comment commenter:string body:text product:references
