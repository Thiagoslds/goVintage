class Product < ApplicationRecord
  belongs_to :user
  has_one :sale
  has_one_attached :image

  validates :image, presence: true
end
