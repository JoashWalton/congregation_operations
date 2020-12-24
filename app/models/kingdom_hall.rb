# Class for describing a Kingdom Hall, the data concerning the meeting place 
#
# Attributes:
# * address - string - physical address of the building
# * city - string - the city where the Kingdom Hall is located
# * state - string - state of the city where the Kingdom Hall is located
# * zip_code - string - zip code of the Kingdom Hall
# * country - string - country of the Kingdom Hall
#
class KingdomHall < ApplicationRecord
  has_many :congregations
end
