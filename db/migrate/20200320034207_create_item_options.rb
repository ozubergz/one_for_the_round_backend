class CreateItemOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :item_options do |t|
      t.belongs_to :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
