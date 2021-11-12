require 'uri'
require 'net/http'

class LocationRequester
  # self. makes it a class method
  def self.get_api_response(name:, limit: 10)
    raise ArgumentError, 'too many HTTP redirects' if limit == 0
    uri_str = 'http://localhost:8000/locations'

    uri = URI(uri_str)
    params = {:name => name}
    uri.query = URI.encode_www_form(params)
    response = Net::HTTP.get_response(uri)

    case response
    when Net::HTTPSuccess then JSON.parse response.read_body
    when Net::HTTPRedirection then
      location = response['location']
      warn "redirected to #{location}"
      uri = URI(location)
      uri.query = URI.encode_www_form(params)
      response = Net::HTTP.get_response(uri)
      JSON.parse response.read_body
    else
      JSON.parse response.read_body
    end
  end
end
