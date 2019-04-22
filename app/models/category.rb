class Category < ApplicationRecord
  # associations
  has_many :sub_categories, dependent: :destroy

  # validations
  validates :name, presence: true, uniqueness: true
end
