# frozen_string_literal: true

# Class for describing a soul - the base data of a person
# Attributes:
# * first_name - string, the first name
# * middle_name - string, the middle name
# * last_name - string, the last name
# * birth_date - date, date of birth, month, date, year
# * gender - string, male or female
# * death_date - date, date of death, month, date, year
class Soul < ApplicationRecord
  has_one :publisher, dependent: :destroy

  validates :first_name, :last_name, :birth_date, :gender, presence: true
end
