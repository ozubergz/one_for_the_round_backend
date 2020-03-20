class AddTitleToItemOption < ActiveRecord::Migration[6.0]
  def change
    add_column :item_options, :description, :string
  end
end
