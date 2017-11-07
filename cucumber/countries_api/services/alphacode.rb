require 'httparty'
require 'json'

class CountryCode
  include HTTParty

  base_uri 'https://restcountries.eu/rest/v2'

  def search_by_code(code)
    JSON.parse(self.class.get("/alpha/#{code}").body)
  end

end
