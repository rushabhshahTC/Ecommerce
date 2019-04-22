class Product < ApplicationRecord
  # associations
  belongs_to        :brand
  belongs_to        :sub_category
  has_many          :product_options, dependent: :destroy
  has_many_attached :images

  # Nested Attributes
  accepts_nested_attributes_for :product_options

  # validations
  validates :name, :price, presence: true
end
