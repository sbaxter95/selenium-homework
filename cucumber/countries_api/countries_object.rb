require 'httparty'
require 'json'
require_relative 'services/all_countries.rb'
require_relative 'services/name_countries.rb'
require_relative 'services/alphacode.rb'
require_relative 'services/capital.rb'
require_relative 'services/currency.rb'

class Countries
  include HTTParty

  base_uri 'https://restcountries.eu/rest/v2'

  def all
    AllCountries.new
  end

  def name
    CountryNames.new
  end

  def code
    CountryCode.new
  end

  def capital
    CountryCapitals.new
  end

  def currency
    Currency.new
  end

end
