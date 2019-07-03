class FavoritedItemsController < ApplicationController

  def new
    @favorited_item = FavoritedItem.new(
      :favorites_list_id => params[:favorites_list_id],
      :product_id => params[:product_id]
    )
    if @favorited_item.save
      redirect_to "/favorites"
    else
      redirect_to products_path
    end
  end

end
