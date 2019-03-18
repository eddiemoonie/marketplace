class RemoveProductIdFromFeedbacks < ActiveRecord::Migration[5.2]
  def change
    remove_column :feedbacks, :product_id, :integer
  end
end
