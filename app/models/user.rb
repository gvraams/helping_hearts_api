class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true

  before_validation :set_username, on: :create

  has_many :donation_requests
  has_many :donation_offers

  has_one :blood_group

  belongs_to :blood_group

  private

  def set_username
    return if self.username.present?
    self.username = "user-#{SecureRandom.hex(18)}"
  end
end
