class Bookmark < ApplicationRecord
  belongs_to :user

  validates :url, presence: true, format: /\A#{URI::regexp(%w(http https))}\z/
  validates :title, length: { maximum: 255 }
  validates :memo, length: { maximum: 65535 }

  def self.ransackable_attributes(auth_object = nil)
    ["memo", "title"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["user"]
  end
end
