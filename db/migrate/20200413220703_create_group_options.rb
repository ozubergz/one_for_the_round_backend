class CreateGroupOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :group_options do |t|
      t.string :name
      t.string :required
    end
  end
end
