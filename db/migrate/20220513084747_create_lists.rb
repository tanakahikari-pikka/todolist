class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      # null: falseで空の状態で保存させるのを防ぐ
      t.string :name, null: false
      t.text :caption, null: false
      t.timestamps
    end
  end
end
