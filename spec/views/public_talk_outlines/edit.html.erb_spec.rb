require 'rails_helper'

RSpec.describe "public_talk_outlines/edit", type: :view do
  before(:each) do
    @public_talk_outline = assign(:public_talk_outline, PublicTalkOutline.create!(
      outline_name: "MyString",
      outline_number: 1,
      outline_note: "MyText"
    ))
  end

  it "renders the edit public_talk_outline form" do
    render

    assert_select "form[action=?][method=?]", public_talk_outline_path(@public_talk_outline), "post" do

      assert_select "input[name=?]", "public_talk_outline[outline_name]"

      assert_select "input[name=?]", "public_talk_outline[outline_number]"

      assert_select "textarea[name=?]", "public_talk_outline[outline_note]"
    end
  end
end
