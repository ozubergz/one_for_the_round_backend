class AddItemOptionToOption < ActiveRecord::Migration[6.0]
  def change
    add_reference :options, :item_option, null: false, foreign_key: true
  end
end
