class AddDetailsToLists < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :category_id, :integer
    add_column :lists, :checkbox, :boolean
  end
end
