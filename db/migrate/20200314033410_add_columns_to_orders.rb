class AddColumnsToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :customer, :string
    add_column :orders, :address, :string
    add_column :orders, :amount, :decimal
  end
end
