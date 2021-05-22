# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Soul, type: :model do
  it 'is invalid with missing attributes' do
    expect(Soul.new).to_not be_valid
  end

  it 'is not valid without a first name' do
    soul = build :soul, :brother, first_name: nil
    expect(soul).to_not be_valid
  end

  it 'is not valid without a last name' do
    soul = build :soul, :brother, last_name: nil
    expect(soul).to_not be_valid
  end

  it 'is not valid without a birth date' do
    soul = build :soul, :brother, birth_date: nil
    expect(soul).to_not be_valid
  end

  it 'is not valid without a gender' do
    soul = build :soul, :brother, gender: nil
    expect(soul).to_not be_valid
  end

  it 'factory model is valid by default' do
    soul = build :soul, :brother
    expect(soul).to be_valid
  end
end
