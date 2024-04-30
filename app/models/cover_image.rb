class CoverImage < ApplicationRecord
  mount_uploader :image, CoverImageUploader

  has_many :bookmarks
end
