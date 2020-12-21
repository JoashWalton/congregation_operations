require 'rails_helper'

RSpec.describe "public_speakers/show", type: :view do
  before(:each) do
    @public_speaker = assign(:public_speaker, PublicSpeaker.create!(
      approved_for_outgoing_talks: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/false/)
  end
end
