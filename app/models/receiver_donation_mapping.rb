class ReceiverDonationMapping < ApplicationRecord
  belongs_to :donation
  belongs_to :receiver, foreign_key: :receiver_id, class_name: "User"
end
