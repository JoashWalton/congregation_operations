require 'rails_helper'

RSpec.describe "kingdom_halls/show", type: :view do
  before(:each) do
    @kingdom_hall = assign(:kingdom_hall, KingdomHall.create!(
      address: "Address",
      city: "City",
      state: "State",
      zip_code: "Zip Code",
      country: "Country"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Zip Code/)
    expect(rendered).to match(/Country/)
  end
end
