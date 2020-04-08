class CreateOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :options do |t|
      t.belongs_to :item_option, null: false, foreign_key: true
      t.string :name
      t.float :price
      t.string :input_type

      t.timestamps
    end
  end
end
