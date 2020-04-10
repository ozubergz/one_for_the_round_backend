class AddRequiredToItemOptions < ActiveRecord::Migration[6.0]
  def change
    add_column :item_options, :required, :boolean
  end
end
