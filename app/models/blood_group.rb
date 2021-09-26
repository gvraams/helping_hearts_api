class BloodGroup < ApplicationRecord
  has_many :users
  has_many :donations
end
