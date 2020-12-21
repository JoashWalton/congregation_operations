require 'rails_helper'

RSpec.describe "public_talk_outlines/new", type: :view do
  before(:each) do
    assign(:public_talk_outline, PublicTalkOutline.new(
      outline_name: "MyString",
      outline_number: 1,
      outline_note: "MyText"
    ))
  end

  it "renders new public_talk_outline form" do
    render

    assert_select "form[action=?][method=?]", public_talk_outlines_path, "post" do

      assert_select "input[name=?]", "public_talk_outline[outline_name]"

      assert_select "input[name=?]", "public_talk_outline[outline_number]"

      assert_select "textarea[name=?]", "public_talk_outline[outline_note]"
    end
  end
end
