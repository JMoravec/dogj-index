class AddIndexToJapaneseIndexRomajiBook < ActiveRecord::Migration
  def change
    add_index :japanese_indices, :romaji
    add_index :japanese_indices, :book
  end
end
