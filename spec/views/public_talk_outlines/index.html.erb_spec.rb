require 'rails_helper'

RSpec.describe "public_talk_outlines/index", type: :view do
  before(:each) do
    assign(:public_talk_outlines, [
      PublicTalkOutline.create!(
        outline_name: "Outline Name",
        outline_number: 2,
        outline_note: "MyText"
      ),
      PublicTalkOutline.create!(
        outline_name: "Outline Name",
        outline_number: 2,
        outline_note: "MyText"
      )
    ])
  end

  it "renders a list of public_talk_outlines" do
    render
    assert_select "tr>td", text: "Outline Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
