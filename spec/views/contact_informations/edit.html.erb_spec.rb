require 'rails_helper'

RSpec.describe "contact_informations/edit", type: :view do
  before(:each) do
    @contact_information = assign(:contact_information, ContactInformation.create!(
      personal_email: "MyString",
      branch_email: "MyString",
      mobile_phone_number: "MyString",
      home_phone_number: "MyString",
      mailing_address: "MyString",
      mailing_city: "MyString",
      mailing_state: "MyString",
      mailing_zip_code: "MyString",
      country: "MyString",
      apartment: "MyString",
      post_office_box_number: "MyString",
      post_office_box_city: "MyString",
      post_office_box_state: "MyString",
      post_office_box_zip_code: "MyString"
    ))
  end

  it "renders the edit contact_information form" do
    render

    assert_select "form[action=?][method=?]", contact_information_path(@contact_information), "post" do

      assert_select "input[name=?]", "contact_information[personal_email]"

      assert_select "input[name=?]", "contact_information[branch_email]"

      assert_select "input[name=?]", "contact_information[mobile_phone_number]"

      assert_select "input[name=?]", "contact_information[home_phone_number]"

      assert_select "input[name=?]", "contact_information[mailing_address]"

      assert_select "input[name=?]", "contact_information[mailing_city]"

      assert_select "input[name=?]", "contact_information[mailing_state]"

      assert_select "input[name=?]", "contact_information[mailing_zip_code]"

      assert_select "input[name=?]", "contact_information[country]"

      assert_select "input[name=?]", "contact_information[apartment]"

      assert_select "input[name=?]", "contact_information[post_office_box_number]"

      assert_select "input[name=?]", "contact_information[post_office_box_city]"

      assert_select "input[name=?]", "contact_information[post_office_box_state]"

      assert_select "input[name=?]", "contact_information[post_office_box_zip_code]"
    end
  end
end
