# frozen_string_literal: true

# Kingdom Hall Attributes:
# address
# city
# state
# zip_code
# country

ActiveRecord::Base.connection.reset_pk_sequence!('Kingdom_Halls')

5.times do
  building = KingdomHall.new(
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state,
    zip_code: Faker::Address.zip_code,
    country: Faker::Address.country
  )

  building.save!
end
