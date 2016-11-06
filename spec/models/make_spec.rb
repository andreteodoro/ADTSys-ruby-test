require 'rails_helper'

describe Make, type: :model do
  it 'fetch makes' do
    expect(Make.fetch).to_not be_nil
  end
end