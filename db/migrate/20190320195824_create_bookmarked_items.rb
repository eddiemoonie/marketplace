class CreateBookmarkedItems < ActiveRecord::Migration[5.2]
  def change
    create_table :bookmarked_items do |t|
      t.integer :bookmarks_id
      t.integer :product_id
    end
  end
end
