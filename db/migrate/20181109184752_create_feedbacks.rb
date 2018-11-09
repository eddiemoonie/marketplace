class CreateFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :feedbacks do |t|
      t.string :rating
      t.string :review
      t.integer :user_id
      t.integer :product_id
      t.timestamps
    end
  end
end
