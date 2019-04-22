class OrderItem < ApplicationRecord
  # associations
  belongs_to :order
  belongs_to :product
  belongs_to :product_option
end
