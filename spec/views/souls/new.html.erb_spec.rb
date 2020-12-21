require 'rails_helper'

RSpec.describe "souls/new", type: :view do
  before(:each) do
    assign(:soul, Soul.new(
      first_name: "MyString",
      middle_name: "MyString",
      last_name: "MyString",
      gender: "MyString"
    ))
  end

  it "renders new soul form" do
    render

    assert_select "form[action=?][method=?]", souls_path, "post" do

      assert_select "input[name=?]", "soul[first_name]"

      assert_select "input[name=?]", "soul[middle_name]"

      assert_select "input[name=?]", "soul[last_name]"

      assert_select "input[name=?]", "soul[gender]"
    end
  end
end
