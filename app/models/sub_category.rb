class SubCategory < ApplicationRecord
  #associations
  belongs_to :category

  #validations
  validates :name, presence: true
end
