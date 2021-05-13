# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Soul, type: :model do
  it "is valid with valid attributes" do
    expect(Soul.new).to be_valid
  end
end
