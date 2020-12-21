require 'rails_helper'

RSpec.describe "public_speakers/index", type: :view do
  before(:each) do
    assign(:public_speakers, [
      PublicSpeaker.create!(
        approved_for_outgoing_talks: false
      ),
      PublicSpeaker.create!(
        approved_for_outgoing_talks: false
      )
    ])
  end

  it "renders a list of public_speakers" do
    render
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
