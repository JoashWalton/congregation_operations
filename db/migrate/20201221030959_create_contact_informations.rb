class CreateContactInformations < ActiveRecord::Migration[6.1]
  def change
    create_table :contact_informations do |t|
      t.string :personal_email
      t.string :branch_email
      t.string :mobile_phone_number
      t.string :home_phone_number
      t.string :mailing_address
      t.string :mailing_city
      t.string :mailing_state
      t.string :mailing_zip_code
      t.string :country
      t.string :apartment
      t.string :post_office_box_number
      t.string :post_office_box_city
      t.string :post_office_box_state
      t.string :post_office_box_zip_code

      t.timestamps
    end
  end
end
