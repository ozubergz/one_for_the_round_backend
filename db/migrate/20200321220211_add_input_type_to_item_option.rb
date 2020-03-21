class AddInputTypeToItemOption < ActiveRecord::Migration[6.0]
  def change
    add_reference :item_options, :input_type, null: false, foreign_key: true
  end
end
