class RemoveCaptionFromLists < ActiveRecord::Migration[5.2]
  def change
    remove_column :lists, :caption, :text
  end
end
