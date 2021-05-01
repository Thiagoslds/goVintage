class Product < ApplicationRecord
  belongs_to :user
  has_one :sale
end
