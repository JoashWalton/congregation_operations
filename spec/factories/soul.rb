# frozen_string_literal: true

FactoryBot.define do 
  factory :soul do 
    death_date { nil }

    trait :brother do 
      first_name { Faker::Name.male_first_name }
      middle_name { Faker::Name.middle_name }
      last_name { Faker::Name.last_name }
      gender { 'male' }
      birth_date { Faker::Date.birthday(min_age: 16, max_age: 90) }
    end

    trait :sister do 
      first_name { Faker::Name.female_first_name }
      middle_name { Faker::Name.middle_name }
      last_name { Faker::Name.last_name }
      gender { 'female' }
      birth_date { Faker::Date.birthday(min_age: 16, max_age: 90) }
    end

    trait :child do 
      first_name { Faker::Name.male_first_name }
      middle_name { Faker::Name.middle_name }
      last_name { Faker::Name.last_name }
      gender { %w[male female].sample } 
      birth_date { Faker::Date.birthday(min_age: 5, max_age: 15) }
    end
  end
end