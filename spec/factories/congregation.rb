# frozen_string_literal: true

FactoryBot.define do
  factory :congregation do
    congregation_name { Faker::Mountain.name }
    congregation_number { rand(1_000..99_999) }
  end
end
