require 'uri'
require 'net/http'
#
# uri = URI('https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY')
# res = Net::HTTP.get_response(uri)
# puts res.body if res.is_a?(Net::HTTPSuccess)
#
#
# uri = URI('https://api.nasa.gov/planetary/apod')
# params = { :api_key => 'your_api_key' }
# uri.query = URI.encode_www_form(params)
#
# res = Net::HTTP.get_response(uri)
# puts res.body if res.is_a?(Net::HTTPSuccess)


class LocationRequester
  # self. makes it a class method
  def self.get_api_response(name)
    uri = URI("http://localhost:8000/locations")
    params = {:name => name}
    uri.query = URI.encode_www_form(params)
    r = Net::HTTP.get_response(uri)
    require "pry"; binding.pry
    # puts res.body if res.is_a?(Net::HTTPSuccess)
    #
    #
    # TODO: we need redirection for this response!!
    #
    #
  # def fetch(uri_str, limit = 10)
  #   # You should choose a better exception.
  #   raise ArgumentError, 'too many HTTP redirects' if limit == 0
  #
  #   response = Net::HTTP.get_response(URI(uri_str))
  #
  #   case response
  #   when Net::HTTPSuccess then
  #     response
  #   when Net::HTTPRedirection then
  #     location = response['location']
  #     warn "redirected to #{location}"
  #     fetch(location, limit - 1)
  #   else
  #     response.value
  #   end
  # end
  #
  # print fetch('http://www.ruby-lang.org')

  end

    # @classmethod
    # def get_api_response(cls, name):
    #     URL = "http://localhost:8000/locations"
    #     r = requests.get(url=URL, params={"name": name})
    #     data = r.json()
    #     return data
end
