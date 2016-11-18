require 'rails_helper'

describe Brand, type: :model do
  it 'fetch brands' do
    expect(Brand.fetch).to_not be_nil
  end
end