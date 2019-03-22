class CreateFavoritesLists < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites_lists do |t|
      t.integer :user_id
    end
  end
end
