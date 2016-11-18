class Model < ActiveRecord::Base
  belongs_to :brand

  def self.fetch_all(brand)
    fetch(brand) unless exists?(brand_id: brand.id)
    where(brand_id: brand.id)
  end

  def self.fetch(brand)
    service = Services::Webmotors.new
    json = service.post('/carro/modelos', marca: brand.webmotors_id)
    json.each { |model| from_json(brand, model) }
  end

  def self.from_json(brand, json)
    return if find_by(name: json['Nome'], brand_id: brand.id)
    create(brand_id: brand.id, name: json['Nome'])
  end
end
