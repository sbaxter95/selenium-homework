require 'spec_helper'

describe 'axa quote' do

  before(:all) do
    @driver = Capybara::Session.new(:chrome)
    @driver.visit('https://www.axappphealthcare.co.uk/')
  end

  it 'test' do
    @driver.find(:xpath, '//*[@id="ctl00_cphMain_dz5_columnDisplay_ctl00_controlcolumn_ctl00_WidgetHost_WidgetHost_widget_CB"]/div/div/div/div[1]/div/div[1]/div/a').click
    @driver.switch_to_window(@driver.windows.last)
    @driver.current_url
    expect(@driver.current_url).to eq('https://epmi.axappphealthcare.co.uk/PMIQuote/')
    @driver.fill_in('First name', :with => 'Pink')
    @driver.fill_in('Last name', :with => 'Floyd')
    sleep 30
  end

end
