require 'rails_helper'

describe Model, type: :model do
  it 'fetch models' do
    make = Make.create webmotors_id: 1, name: "Fiat"
    expect(Model.fetch(make)).to_not be_nil
  end

  it "respond to make" do
    model = Model.new
    expect(model).to respond_to :make
  end

  it "check make id" do
    Make.delete_all
    Model.delete_all

    make = Make.create webmotors_id: 1, name: "Fiat"
    Model.create name: "Uno", make_id: make.id

    expect(Model.take.make.id).to eq make.id
  end

end