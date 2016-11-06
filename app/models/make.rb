class Make < ActiveRecord::Base
  has_many :models, dependent: :destroy

  def self.fetch_all
    fetch unless any?
    all
  end

  def self.fetch
    service = Services::Webmotors.new
    json = service.post('/carro/marcas')
    json.each { |make| from_json(make) }
  end

  def self.from_json(json)
    return if find_by(webmotors_id: json['Id'])
    create(name: json['Nome'], webmotors_id: json['Id'])
  end

end
