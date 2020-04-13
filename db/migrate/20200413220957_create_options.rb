class CreateOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :options do |t|
      t.string :name
      t.string :input_type
      t.float :price
      t.belongs_to :group_option, null: false, foreign_key: true
    end
  end
end
