require 'rails_helper'

RSpec.describe "contact_informations/show", type: :view do
  before(:each) do
    @contact_information = assign(:contact_information, ContactInformation.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Personal Email/)
    expect(rendered).to match(/Branch Email/)
    expect(rendered).to match(/Mobile Phone Number/)
    expect(rendered).to match(/Home Phone Number/)
    expect(rendered).to match(/Mailing Address/)
    expect(rendered).to match(/Mailing City/)
    expect(rendered).to match(/Mailing State/)
    expect(rendered).to match(/Mailing Zip Code/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/Apartment/)
    expect(rendered).to match(/Post Office Box Number/)
    expect(rendered).to match(/Post Office Box City/)
    expect(rendered).to match(/Post Office Box State/)
    expect(rendered).to match(/Post Office Box Zip Code/)
  end
end
