require 'httparty'
require 'json'

class AllCountries
  include HTTParty

  base_uri 'https://restcountries.eu/rest/v2'

  def all_countries_service
    JSON.parse(self.class.get("/all").body)
  end

end
