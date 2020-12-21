require 'rails_helper'

RSpec.describe "public_speakers/edit", type: :view do
  before(:each) do
    @public_speaker = assign(:public_speaker, PublicSpeaker.create!(
      approved_for_outgoing_talks: false
    ))
  end

  it "renders the edit public_speaker form" do
    render

    assert_select "form[action=?][method=?]", public_speaker_path(@public_speaker), "post" do

      assert_select "input[name=?]", "public_speaker[approved_for_outgoing_talks]"
    end
  end
end
