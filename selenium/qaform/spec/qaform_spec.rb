require 'spec_helper'

describe 'qaform' do

  before(:all) do
    @driver = Selenium::WebDriver.for :chrome
  end

  it 'should open the qaform page' do
    @driver.get('http://toolsqa.com/automation-practice-form/')
    expect(@driver.current_url).to eq 'http://toolsqa.com/automation-practice-form/'
    @driver.find_element(:name, 'firstname').displayed?
  end

end
