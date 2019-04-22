class SubCategory < ApplicationRecord
  # associations
  belongs_to :category
  has_many :products, dependent: :destroy

  # validations
  validates :name, presence: true
end
