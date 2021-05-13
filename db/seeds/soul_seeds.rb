# frozen_string_literal: true

# Soul Attributes:
# first_name
# middle_name
# last_name
# gender
# birth_date
# death_date

Soul.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('Souls')

# Make brothers
35.times do
  Soul.new(
    first_name: Faker::Name.male_first_name,
    middle_name: Faker::Name.middle_name,
    last_name: Faker::Name.last_name,
    gender: 'male',
    birth_date: Faker::Date.birthday(min_age: 16, max_age: 90),
    death_date: nil
  ).save
end

# Make sisters
45.times do
  Soul.new(
    first_name: Faker::Name.female_first_name,
    middle_name: Faker::Name.middle_name,
    last_name: Faker::Name.last_name,
    gender: 'female',
    birth_date: Faker::Date.birthday(min_age: 16, max_age: 90),
    death_date: nil
  ).save
end

# Make children
20.times do
  Soul.new(
    first_name: Faker::Name.male_first_name,
    middle_name: Faker::Name.middle_name,
    last_name: Faker::Name.last_name,
    gender: %w[male female].sample
    birth_date: Faker::Date.birthday(min_age: 5, max_age: 15),
    death_date: nil
  ).save
end

