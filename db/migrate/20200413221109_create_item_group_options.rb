class CreateItemGroupOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :item_group_options do |t|
      t.belongs_to :item, null: false, foreign_key: true
      t.belongs_to :group_option, null: false, foreign_key: true
    end
  end
end
