class CreateOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :options do |t|
      t.string :name
      t.float :price_variation

      t.timestamps
    end
  end
end
