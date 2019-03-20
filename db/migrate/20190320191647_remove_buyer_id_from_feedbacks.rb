class RemoveBuyerIdFromFeedbacks < ActiveRecord::Migration[5.2]
  def change
    remove_column :feedbacks, :buyer_id, :integer
  end
end
