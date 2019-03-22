class FavoritesList < ApplicationRecord
  belongs_to :user
  has_many :favorited_items
  has_many :products, :through => :favorited_items
end
