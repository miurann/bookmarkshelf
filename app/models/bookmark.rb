class Bookmark < ApplicationRecord
  belongs_to :user
  has_many :bookmark_tags, dependent: :destroy
  has_many :tags, through: :bookmark_tags
  belongs_to :cover_image

  validates :url, presence: true, format: /\A#{URI::regexp(%w(http https))}\z/
  validates :title, length: { maximum: 255 }
  validates :memo, length: { maximum: 65535 }

  def self.ransackable_attributes(auth_object = nil)
    ["memo", "title"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["user", "tags"]
  end
end
