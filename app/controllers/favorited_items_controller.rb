class FavoritedItemsController < ApplicationController
  before_action :set_favorites_list

  # def new
  #   @favorited_item = FavoritedItem.new(bookmarked_item_params)
  #   if @favorited_item.save
  #     redirect_to favorites_list_path
  #   else
  #     redirect_to products_path
  #   end
  # end

  private

  def set_favorites_list
    @favorites_list ||= FavoritesList.find(session[:user_id]) if session[:user_id]
  end

  def favorited_item_params
    params.require(:favorited_item).permit(
      :favorites_list_id,
      :product_id
    )
  end
end
