class AddColumnsToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :customer, :string
    add_column :orders, :address, :string
    add_column :orders, :amount, :decimal
    add_column :orders, :email, :string
    add_column :orders, :phone, :string
  end
end
