class PurchasesController < ApplicationController

  def new
    @purchase = Purchase.create(
      :user_id => params[:user_id],
      :product_id => params[:product_id]
    )
    redirect_to user_path(@purchase.user)
  end

end
