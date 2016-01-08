class CreateJapaneseIndices < ActiveRecord::Migration
  def change
    create_table :japanese_indices do |t|
      t.string :romaji, null: false
      t.string :book, null: false
      t.integer :page, null: false

      t.timestamps null: false
    end
  end
end
