class Order < ApplicationRecord
  # associations
  belongs_to :user
  has_many :order_items, dependent: :destroy
end
