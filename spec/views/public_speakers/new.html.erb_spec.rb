require 'rails_helper'

RSpec.describe "public_speakers/new", type: :view do
  before(:each) do
    assign(:public_speaker, PublicSpeaker.new(
      approved_for_outgoing_talks: false
    ))
  end

  it "renders new public_speaker form" do
    render

    assert_select "form[action=?][method=?]", public_speakers_path, "post" do

      assert_select "input[name=?]", "public_speaker[approved_for_outgoing_talks]"
    end
  end
end
