class Brand < ApplicationRecord
  #validations
  validates :name, presence: true
end
