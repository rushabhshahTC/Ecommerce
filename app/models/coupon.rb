class Coupon < ApplicationRecord
  # associations
  belongs_to :user

  # validations
  validates :code, presence: true, uniqueness: true
  validate :invalid_past_date

  def invalid_past_date
    if end_date.present? && end_date < Date.today
      errors.add(:end_date, "can't be in the past")
    end
  end

end
