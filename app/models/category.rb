class Category < ApplicationRecord
  #associations
  has_many :sub_categories
  
  #validations
  validates :name, presence: true, uniqueness: true
end
