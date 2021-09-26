class Donation < ApplicationRecord
  has_many :donor_donation_mappings
  has_many :receiver_donation_mappings

  has_many :donors, through: :donor_donation_mappings, class_name: "User"
  has_many :receivers, through: :receiver_donation_mappings, class_name: "User"

  has_one :blood_group

  belongs_to :blood_group

  enum status: {
    pending: 10,
    accepted: 20,
    rejected: 30,
    expired: 40,
    fulfilled: 40,
  }

  private

  protected

  public

  def single_donor?
    self.donors.count(1) == 1
  end

  def single_receiver?
    self.receivers.count(1) == 1
  end

  def multiple_donors?
    !single_donor?
  end

  def multiple_receivers?
    !single_receiver?
  end

  def donor
    return self.donors.first if single_donor?
    return nil
  end

  def receiver
    return self.receivers.first if single_receiver?
    return nil
  end
end
