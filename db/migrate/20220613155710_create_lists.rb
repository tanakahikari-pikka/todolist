class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.integer :category_id, :integer
      t.boolean :done, :boolean, default: false, null: false
      t.string :name
      t.timestamps
    end
  end
end
