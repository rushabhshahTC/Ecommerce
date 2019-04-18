class Product < ApplicationRecord
  #associations
  belongs_to :brand
  belongs_to :sub_category

  #validations
  validates :name, :price, presence: true
end
