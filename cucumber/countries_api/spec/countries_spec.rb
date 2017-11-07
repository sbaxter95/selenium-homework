require 'spec_helper'
require_relative '../countries_object.rb'

describe 'testing countries api' do

  before(:all) do
    countries = Countries.new
    @all = countries.all
    @name = countries.name
    @code = countries.code
    @currency = countries.currency
    @capital = countries.capital
  end

context 'testing returning all countries' do

  it 'should return more than 1 country' do
    expect(@all.all_countries_service.length).to be > 1
  end

  it 'should return an array' do
    expect(@all.all_countries_service).to be_kind_of(Array)
  end

  it 'should return an alphabetical array where the first country begins with A' do
    expect(@all.all_countries_service[0]['name']).to include('A')
  end

end

context 'testing searching by name functionality' do

  it 'should return at least 1 country' do
    expect(@name.countries_name('Poland').length).to be >= 1
  end

  it 'should have a name that is a string' do
    expect(@name.countries_name('France')[0]['name']).to be_kind_of(String)
  end

end

context 'testing searching by full name' do

  it 'should return at least 1 country' do
    expect(@name.countries_full_name('Ukraine').length).to be >= 1
  end

  it 'should return country with at least 4 letters' do
    expect(@name.countries_full_name('Cuba')[0]['name'].length).to be >= 4
  end

end

context 'testing searching by alpha3 code' do

  it 'should have an ISO code that is a string' do
    expect(@all.all_countries_service[0]['alpha3Code']).to be_kind_of(String)
  end

  it 'should have an alpha3 code that is three letters long' do
    expect(@code.search_by_code('GBR')['alpha3Code'].length).to eq 3
  end

end

context 'testing searching by currency' do

  it 'should have a currency code that is a string' do
    expect(@currency.currency('AWG')[0]['currencies'][0]['code']).to be_kind_of(String)
  end

  it 'should have a currency name that is a string' do
    expect(@currency.currency('AWG')[0]['currencies'][0]['name']).to be_kind_of(String)
  end

  it 'should have a currency code that is three letters' do
    expect(@currency.currency('AWG')[0]['currencies'][0]['code'].length).to eq 3
  end

end

context 'testing for searching by capital city' do

  it 'should have a capital city that is a string and alternative spellings in an array' do
    expect(@capital.capitals('London')[0]['capital']).to be_kind_of(String)
  end

  it 'should have alternative spellings in an array' do
    expect(@capital.capitals('London')[0]['altSpellings']).to be_kind_of(Array)
  end

end

end
