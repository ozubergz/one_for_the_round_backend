class AddNumberOfItemsToCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :number_of_items, :integer
  end
end
