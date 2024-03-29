class Tag < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, uniqueness: { scope: :user } , length: { maximum: 20 }
end
