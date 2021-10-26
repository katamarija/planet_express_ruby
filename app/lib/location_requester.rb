require 'uri'
require 'net/http'

class LocationRequester
  # self. makes it a class method
  def self.get_api_response(name, limit=10)
    raise ArgumentError, 'too many HTTP redirects' if limit == 0
    # uri_str = 'http://localhost:8000/locations/?name=earth'
    uri_str = 'http://localhost:8000/locations'

    uri = URI(uri_str)
    params = {:name => name}
    uri.query = URI.encode_www_form(params)
    response = Net::HTTP.get_response(uri)

    case response
    when Net::HTTPSuccess then response.body.to_json
    when Net::HTTPRedirection then
      location = response['location']
      warn "redirected to #{location}"
      uri = URI(location)
      uri.query = URI.encode_www_form(params)
      response = Net::HTTP.get_response(uri).body.to_json

      # fetch(location, limit - 1)
    else
      response.body.to_json
    end
  end
end
