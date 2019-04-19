class Coupon < ApplicationRecord
  #associations
  belongs_to :user

  #validations
  validates :code, presence: true, uniqueness: true

  #cutstom validation method
  validate :expiration_date_cannot_be_in_the_past

  def expiration_date_cannot_be_in_the_past
    if end_date.present? && end_date < Date.today
      errors.add(:end_date, "can't be in the past")
    end
  end

end
