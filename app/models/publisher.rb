# Class for describing a publisher with data that is specific to a base member of a congregation
#
# Attributes:
# * unbaptized - boolean, teue if the publisher has been announced as 
# * unbaptized_date - date, date of announcement, month, date, year
# * baptized - boolean, true if the publisher has been baptized
# * baptism_date - date, date of baptism, month, date, year
# * other_sheep - boolean, true if the publisher does **not** partake of the emblems
# * anointed - boolean, true if the publisher does partake of the emblems and identifies as such
#
class Publisher < ApplicationRecord
  belongs_to :soul
  belongs_to :congregation
  has_one :contact_information
end
