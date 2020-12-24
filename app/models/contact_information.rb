# Class for documenting all contact information for a publisher, or a soul...
#
# Attributes:
# * personal_email - string, email for most communication
# * theocratic_email - string, branch provided email address
# * mobile_phone_number - string, cell number
# * home_phone_number - string, home number
# * mailing_address - string, number and street name
# * mailing_city - string, city name
# * mailing_state - string, state name
# * mailing_zip_code - string, zip code
# * country - string - country of home
# * apartment - string - apartment identification info
# * post_office_box_number - string - PO Box number
# * post_office_box_city - string - PO Box city
# * post_office_box_state - string - PO Box state
# * post_office_box_zip_code - string - PO Box zip code
#
class ContactInformation < ApplicationRecord
  belongs_to :publisher
end
