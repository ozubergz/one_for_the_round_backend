class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :customer
      t.string :address
      t.string :email
      t.string :phone
      t.text :items
      t.float :amount

      t.timestamps
    end
  end
end