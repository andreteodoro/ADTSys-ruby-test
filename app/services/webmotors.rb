module Services
  class Webmotors

    BASE_URI = "http://www.webmotors.com.br"

    def post(uri, params = {})
      response = Net::HTTP.post_form(URI(BASE_URI + uri), params)
      return nil unless response.kind_of? Net::HTTPSuccess
      JSON.parse response.body
    end

  end
end