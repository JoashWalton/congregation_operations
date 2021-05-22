FactoryBot.define do
  factory :publisher do
    association :soul
    association :congregation

    other_sheep { true }
    anointed { false }

    trait :unbaptized do
      unbaptized { true }
      unbaptized_date { soul.birth_date + rand(10..65).years + rand(3..7).months }
    end

    trait :baptized do
      baptized { true }
      baptism_date { soul.birth_date + rand(10..65).years + rand(3..7).months }
    end
  end
end
