require 'rails_helper'

RSpec.describe "kingdom_halls/edit", type: :view do
  before(:each) do
    @kingdom_hall = assign(:kingdom_hall, KingdomHall.create!(
      address: "MyString",
      city: "MyString",
      state: "MyString",
      zip_code: "MyString",
      country: "MyString"
    ))
  end

  it "renders the edit kingdom_hall form" do
    render

    assert_select "form[action=?][method=?]", kingdom_hall_path(@kingdom_hall), "post" do

      assert_select "input[name=?]", "kingdom_hall[address]"

      assert_select "input[name=?]", "kingdom_hall[city]"

      assert_select "input[name=?]", "kingdom_hall[state]"

      assert_select "input[name=?]", "kingdom_hall[zip_code]"

      assert_select "input[name=?]", "kingdom_hall[country]"
    end
  end
end
