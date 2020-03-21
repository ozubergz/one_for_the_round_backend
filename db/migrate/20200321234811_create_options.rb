class CreateOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :options do |t|
      t.string :name
      t.float :price
      t.belongs_to :input_type, null: false, foreign_key: true
      t.belongs_to :item_option, null: false, foreign_key: true

      t.timestamps
    end
  end
end
