class CreateBookmarks < ActiveRecord::Migration[7.1]
  def change
    create_table :bookmarks do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.string :url, null: false
      t.text :memo

      t.timestamps
    end
  end
end
