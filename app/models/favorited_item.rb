class FavoritedItem < ApplicationRecord
  belongs_to :favorites_list
  belongs_to :product
end
