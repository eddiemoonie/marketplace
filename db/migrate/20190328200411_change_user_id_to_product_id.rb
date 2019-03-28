class ChangeUserIdToProductId < ActiveRecord::Migration[5.2]
  def change
    rename_column :feedbacks, :user_id, :product_id
  end
end
