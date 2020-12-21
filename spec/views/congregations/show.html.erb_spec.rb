require 'rails_helper'

RSpec.describe "congregations/show", type: :view do
  before(:each) do
    @congregation = assign(:congregation, Congregation.create!(
      congregation_name: "Congregation Name",
      congregation_number: "Congregation Number"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Congregation Name/)
    expect(rendered).to match(/Congregation Number/)
  end
end
