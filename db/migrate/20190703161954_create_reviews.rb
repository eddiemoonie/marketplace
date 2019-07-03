class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :post
      t.string :consumer
      t.timestamps
    end
  end
end
