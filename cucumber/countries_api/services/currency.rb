require 'httparty'
require 'json'

class Currency
  include HTTParty

  base_uri 'https://restcountries.eu/rest/v2'

  def currency(currency)
    JSON.parse(self.class.get("/currency/#{currency}").body)
  end

end
