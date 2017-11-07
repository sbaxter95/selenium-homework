require 'httparty'
require 'json'

class CountryCapitals
  include HTTParty

  base_uri 'https://restcountries.eu/rest/v2'

  def capitals(capital)
    JSON.parse(self.class.get("/capital/#{capital}").body)
  end

end
