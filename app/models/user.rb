class User < ApplicationRecord
  has_secure_password

  has_many :products
  has_many :reviews
  has_many :purchases
  has_one :favorites_list
  has_many :favorited_items, :through => :favorites_list
end
