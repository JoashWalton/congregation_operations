# Class for describing a congregation - a collection of publishers 
#
# Attributes:
# * name - string - name of the congregation 
# * congregation_number - string - branch assigned number for congregation
#
class Congregation < ApplicationRecord
  has_many :publishers
  belongs_to :kingdom_hall
end
