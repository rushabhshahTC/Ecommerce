class Category < ApplicationRecord
  #associations
  has_many :sub_categories, dependent: :destroy
  has_many :products, through: :sub_categories
  
  #validations
  validates :name, presence: true, uniqueness: true
end
