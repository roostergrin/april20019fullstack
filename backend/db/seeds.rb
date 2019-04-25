require 'faker'

STATUSES = ['active', 'recall', 'closed']

practice = Practice.create(name: 'Rooster Grin')

Location.create(name: 'Mission', street_address: '654 A Natoma Street', city: 'San Francisco', state: 'CA', zip: '94114', practice: practice)
Location.create(name: 'Height', street_address: '600 Sanchez Street', city: 'San Francisco', state: 'CA', zip: '94709', practice: practice)
Location.create(name: 'Dolores', street_address: '30 Hancock Drive', city: 'San Francisco', state: 'CA', zip: '94214', practice: practice)

Doctor.create(first_name: 'Charles', last_name: 'Bagden', title: 'DDS', practice: practice)
Doctor.create(first_name: 'Raymond', last_name: 'Lazar', title: 'Dr.', practice: practice)

1000.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  res_parties = []

  rand(1..3).times do
    res_parties << { first_name: Faker::Name.first_name, last_name: last_name }
  end

  Patient.create(
    first_name: first_name,
    last_name: last_name,
    age: rand(7..50),
    status: STATUSES.sample,
    dpms_json: { first_name: first_name, last_name: last_name, res_parties: res_parties }.to_json,
    doctor_id: rand(1..2)
  )
end
