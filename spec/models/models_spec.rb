require 'rails_helper'

describe Model, type: :model do
  it 'fetch models' do
    brand = Brand.create webmotors_id: 1, name: 'Fiat'
    expect(Model.fetch(brand)).to_not be_nil
  end

  it 'responds to brand' do
    model = Model.new
    expect(model).to respond_to :brand
  end

  it 'checks make id' do
    Brand.delete_all
    Model.delete_all

    brand = Brand.create webmotors_id: 1, name: 'Fiat'
    Model.create name: 'Uno', brand_id: brand.id

    expect(Model.take.brand.id).to eq brand.id
  end

end