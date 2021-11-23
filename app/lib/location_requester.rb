require 'uri'
require 'net/http'

class LocationRequester
  # self. makes it a class method
  def self.get_api_response(name:)
    uri_str = 'http://localhost:8000/locations'

    uri = URI(uri_str)
    params = {:name => name}
    uri.query = URI.encode_www_form(params)
    get_http_response_with_redirects(uri, params)
  end

  def self.get_http_response_with_redirects(uri, params, limit=10)
    raise ArgumentError, 'too many HTTP redirects' if limit == 0
    response = Net::HTTP.get_response(uri)

    case response
    when Net::HTTPSuccess then JSON.parse response.read_body
    when Net::HTTPRedirection then
      redirected_uri = response['location']
      warn "redirected to #{redirected_uri}"
      new_uri = URI(redirected_uri)
      new_uri.query = URI.encode_www_form(params)

      get_http_response_with_redirects(new_uri, params, limit-1)
    else
      JSON.parse response.read_body
    end

  end
end
