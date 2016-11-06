module Services
  class Webmotors

    WEBMOTORS_URI = "http://www.webmotors.com.br"

    def post(uri, params = {})
      response = Net::HTTP.post_form(URI(WEBMOTORS_URI + uri), params)
      return nil unless response.success?
      JSON.parse response.body
    end

    def models(maker_id)
      response = Net::HTTP.post_form(URI(WEBMOTORS_URI + '/carro/modelos'), { marca: maker_id })
      return nil unless response.success?
      JSON.parse response.body
    end
  end
end