class ChangeBuyerNameToSellerName < ActiveRecord::Migration[5.2]
  def change
    rename_column :feedbacks, :buyer_name, :seller_name
  end
end
