require 'rails_helper'

RSpec.describe "public_talk_outlines/show", type: :view do
  before(:each) do
    @public_talk_outline = assign(:public_talk_outline, PublicTalkOutline.create!(
      outline_name: "Outline Name",
      outline_number: 2,
      outline_note: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Outline Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
  end
end
