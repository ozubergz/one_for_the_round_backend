class AddPendingToOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :pending, :boolean, default: true
  end
end
