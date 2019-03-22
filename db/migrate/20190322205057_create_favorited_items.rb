class CreateFavoritedItems < ActiveRecord::Migration[5.2]
  def change
    create_table :favorited_items do |t|
      t.integer :favorites_list_id
      t.integer :product_id
    end
  end
end
