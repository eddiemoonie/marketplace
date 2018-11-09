class PurchasesController < ApplicationController

  def new
    @purchase = Purchase.new(
      :user_id => params[:user_id],
      :product_id => params[:product_id]
    )
    if @purchase.save
      @product = Product.find(@purchase.product_id)
      @product.sold = true
      @product.save
    end
    redirect_to user_path(@purchase.user)
  end

end
