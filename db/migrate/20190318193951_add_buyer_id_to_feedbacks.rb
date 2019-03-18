class AddBuyerIdToFeedbacks < ActiveRecord::Migration[5.2]
  def change
    add_column :feedbacks, :buyer_id, :integer
  end
end
