json.extract! contact_information, :id, :personal_email, :branch_email, :mobile_phone_number, :home_phone_number, :mailing_address, :mailing_city, :mailing_state, :mailing_zip_code, :country, :apartment, :post_office_box_number, :post_office_box_city, :post_office_box_state, :post_office_box_zip_code, :created_at, :updated_at
json.url contact_information_url(contact_information, format: :json)
