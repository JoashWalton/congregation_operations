require 'rails_helper'

RSpec.describe "kingdom_halls/index", type: :view do
  before(:each) do
    assign(:kingdom_halls, [
      KingdomHall.create!(
        address: "Address",
        city: "City",
        state: "State",
        zip_code: "Zip Code",
        country: "Country"
      ),
      KingdomHall.create!(
        address: "Address",
        city: "City",
        state: "State",
        zip_code: "Zip Code",
        country: "Country"
      )
    ])
  end

  it "renders a list of kingdom_halls" do
    render
    assert_select "tr>td", text: "Address".to_s, count: 2
    assert_select "tr>td", text: "City".to_s, count: 2
    assert_select "tr>td", text: "State".to_s, count: 2
    assert_select "tr>td", text: "Zip Code".to_s, count: 2
    assert_select "tr>td", text: "Country".to_s, count: 2
  end
end
