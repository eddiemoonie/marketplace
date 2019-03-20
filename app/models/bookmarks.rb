class Bookmarks < ApplicationRecord
  belongs_to :user
  has_many :bookmarked_items
  has_many :products, :through => :bookmarked_items
end
