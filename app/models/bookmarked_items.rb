class BookmarkedItems < ApplicationRecord
  belongs_to :bookmarks
  belongs_to :product
end
