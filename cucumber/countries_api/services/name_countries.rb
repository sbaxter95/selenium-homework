require 'httparty'
require 'json'

class CountryNames
  include HTTParty

    base_uri 'https://restcountries.eu/rest/v2'

    def countries_name(name)
      JSON.parse(self.class.get("/name/#{name}").body)
    end

    def countries_full_name(name)
      JSON.parse(self.class.get("/name/#{name}?fullText=true").body)
    end

end
