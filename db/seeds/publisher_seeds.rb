# frozen_string_literal: true

# Publisher Attributes:
# unbaptized
# unbaptized_date
# baptized
# baptism_date
# other_sheep
# anointed

ActiveRecord::Base.connection.reset_pk_sequence!('Publishers')

congregation = Congregation.new(
  congregation_name: Faker::Mountain.name,
  congregation_number: rand(1_000..99_999),
  kingdom_hall_id: KingdomHall.first.id
)
congregation.save!

baptized_publishers = Soul.all.take(75)
unbaptized_publishers = Soul.all.take(15)
attenders = Soul.all.take(10)

baptized_publishers.each do |soul|
  publisher = Publisher.new(
    baptized: true,
    baptism_date: soul.birth_date + rand(10..65).years + rand(3..7).months,
    unbaptized: false,
    other_sheep: true,
    anointed: false,
    soul_id: soul.id,
    congregation_id: congregation.id
  )

  publisher.save!
end

unbaptized_publishers.each do |soul|
  publisher = Publisher.new(
    baptized: false,
    unbaptized: true,
    unbaptized_date: soul.birth_date + rand(10..65).years + rand(3..7).months,
    other_sheep: true,
    anointed: false,
    soul_id: soul.id,
    congregation_id: congregation.id
  )

  publisher.save!
end

attenders.each do |soul|
  attender = Publisher.new(
    baptized: false,
    unbaptized: false,
    other_sheep: false,
    anointed: false,
    soul_id: soul.id,
    congregation_id: congregation.id
  )

  attender.save!
end
