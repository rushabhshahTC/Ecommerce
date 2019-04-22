class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  # associations
  has_one  :profile, dependent: :destroy, autosave: true
  has_many :coupons
  has_many :products
  has_many :orders, dependent: :destroy

  # Nested Attributes
  accepts_nested_attributes_for :profile
end
