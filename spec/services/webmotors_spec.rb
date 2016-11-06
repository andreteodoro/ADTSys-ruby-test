require 'rails_helper'

describe 'Webmotors' do

  it 'success request' do
    service = Services::Webmotors.new
    json = service.post('/carro/marcas')
    expect(json).to_not be_nil
  end
end