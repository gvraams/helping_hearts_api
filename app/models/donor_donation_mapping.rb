class DonorDonationMapping < ApplicationRecord
  belongs_to :donation
  belongs_to :donor, foreign_key: :donor_id, class_name: "User"
end
