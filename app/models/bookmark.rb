class Bookmark < ApplicationRecord
  belongs_to :user

  validates :url, presence: true
  validates :title, length: { maximum: 255 }
  validates :memo, length: { maximum: 65535 }
end
