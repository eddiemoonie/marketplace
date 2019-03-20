class User < ApplicationRecord
  has_secure_password

  has_many :products
  has_many :feedbacks
  has_many :purchases
  has_one :bookmarks
  has_many :bookmarked_items, :through => :bookmarks
end
