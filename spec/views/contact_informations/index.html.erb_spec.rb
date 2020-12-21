require 'rails_helper'

RSpec.describe "contact_informations/index", type: :view do
  before(:each) do
    assign(:contact_informations, [
      ContactInformation.create!(
        personal_email: "Personal Email",
        branch_email: "Branch Email",
        mobile_phone_number: "Mobile Phone Number",
        home_phone_number: "Home Phone Number",
        mailing_address: "Mailing Address",
        mailing_city: "Mailing City",
        mailing_state: "Mailing State",
        mailing_zip_code: "Mailing Zip Code",
        country: "Country",
        apartment: "Apartment",
        post_office_box_number: "Post Office Box Number",
        post_office_box_city: "Post Office Box City",
        post_office_box_state: "Post Office Box State",
        post_office_box_zip_code: "Post Office Box Zip Code"
      ),
      ContactInformation.create!(
        personal_email: "Personal Email",
        branch_email: "Branch Email",
        mobile_phone_number: "Mobile Phone Number",
        home_phone_number: "Home Phone Number",
        mailing_address: "Mailing Address",
        mailing_city: "Mailing City",
        mailing_state: "Mailing State",
        mailing_zip_code: "Mailing Zip Code",
        country: "Country",
        apartment: "Apartment",
        post_office_box_number: "Post Office Box Number",
        post_office_box_city: "Post Office Box City",
        post_office_box_state: "Post Office Box State",
        post_office_box_zip_code: "Post Office Box Zip Code"
      )
    ])
  end

  it "renders a list of contact_informations" do
    render
    assert_select "tr>td", text: "Personal Email".to_s, count: 2
    assert_select "tr>td", text: "Branch Email".to_s, count: 2
    assert_select "tr>td", text: "Mobile Phone Number".to_s, count: 2
    assert_select "tr>td", text: "Home Phone Number".to_s, count: 2
    assert_select "tr>td", text: "Mailing Address".to_s, count: 2
    assert_select "tr>td", text: "Mailing City".to_s, count: 2
    assert_select "tr>td", text: "Mailing State".to_s, count: 2
    assert_select "tr>td", text: "Mailing Zip Code".to_s, count: 2
    assert_select "tr>td", text: "Country".to_s, count: 2
    assert_select "tr>td", text: "Apartment".to_s, count: 2
    assert_select "tr>td", text: "Post Office Box Number".to_s, count: 2
    assert_select "tr>td", text: "Post Office Box City".to_s, count: 2
    assert_select "tr>td", text: "Post Office Box State".to_s, count: 2
    assert_select "tr>td", text: "Post Office Box Zip Code".to_s, count: 2
  end
end
