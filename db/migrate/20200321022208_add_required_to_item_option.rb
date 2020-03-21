class AddRequiredToItemOption < ActiveRecord::Migration[6.0]
  def change
    add_column :item_options, :required, :boolean, default: false
  end
end
