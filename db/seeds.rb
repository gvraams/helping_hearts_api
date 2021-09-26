# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Upload test data:
# rake db:drop:_unsafe db:create db:migrate db:seed

at_negative = BloodGroup.create(name: "A1-ve")
at_positive = BloodGroup.create(name: "A1+ve")

user_one = User.create(blood_group: at_negative)
user_two = User.create(blood_group: at_positive)
user_three = User.create(blood_group: at_negative)

chennai   = City.create(name: "Chennai")
tamilnadu = State.create(name: "Tamilnadu")

donation = Donation.create(
  blood_group: at_negative,
  status: Donation.statuses[:pending],
  due_at: 1.month.from_now,
  quantity: 10,
)

DonorDonationMapping.create(donation: donation, donor: user_one)
ReceiverDonationMapping.create(donation: donation, receiver: user_three)
