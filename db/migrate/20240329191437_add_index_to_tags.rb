class AddIndexToTags < ActiveRecord::Migration[7.1]
  def change
    add_index :tags, [ :name, :user_id ], unique: true
  end
end
