class AddOptionsToItemOption < ActiveRecord::Migration[6.0]
  def change
    add_column :item_options, :options, :text
  end
end
