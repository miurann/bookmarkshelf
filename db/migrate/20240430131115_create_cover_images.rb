class CreateCoverImages < ActiveRecord::Migration[7.1]
  def change
    create_table :cover_images do |t|
      t.string :image, null: false
      t.boolean :standard, default: true, null: false

      t.timestamps
    end
  end
end
