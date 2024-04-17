class Tag < ApplicationRecord
  belongs_to :user
  has_many :bookmark_tags, dependent: :destroy
  has_many :bookmarks, through: :bookmark_tags

  validates :name, presence: true, uniqueness: { scope: :user } , length: { maximum: 20 }
end
