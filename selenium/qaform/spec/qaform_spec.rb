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

  it 'should input a first name automatically' do
    @driver.find_element(:name, 'firstname').send_keys('Sophie')
    expect(@driver.find_element(:name, 'firstname')['value']).to eq 'Sophie'
  end

  it 'should input a last name automatically' do
    @driver.find_element(:name, 'lastname').send_keys('Baxter')
    expect(@driver.find_element(:name, 'lastname')['value']).to eq 'Baxter'
  end

  it 'should automatically be able to select the gender radio buttons' do
    @driver.find_element(:id, 'sex-0').click()
    expect(@driver.find_element(:id, 'sex-0')['checked']).to eq "true"
    @driver.find_element(:id, 'sex-1').click()
    expect(@driver.find_element(:id, 'sex-1')['checked']).to eq "true"
  end

  it 'should automatically select one of the experience radio buttons' do
    @driver.find_element(:id, 'exp-0').click()
    expect(@driver.find_element(:id, 'exp-0')['checked']).to eq "true"
    @driver.find_element(:id, 'exp-1').click()
    expect(@driver.find_element(:id, 'exp-1')['checked']).to eq "true"
    @driver.find_element(:id, 'exp-2').click()
    expect(@driver.find_element(:id, 'exp-2')['checked']).to eq "true"
    @driver.find_element(:id, 'exp-3').click()
    expect(@driver.find_element(:id, 'exp-3')['checked']).to eq "true"
    @driver.find_element(:id, 'exp-4').click()
    expect(@driver.find_element(:id, 'exp-4')['checked']).to eq "true"
    @driver.find_element(:id, 'exp-5').click()
    expect(@driver.find_element(:id, 'exp-5')['checked']).to eq "true"
    @driver.find_element(:id, 'exp-6').click()
    expect(@driver.find_element(:id, 'exp-6')['checked']).to eq "true"
  end

  it 'should automatically select a date' do
    @driver.find_element(:id, 'datepicker').send_keys('23-12-95')
    expect(@driver.find_element(:id, 'datepicker')['value']).to eq '23-12-95'
  end

  it 'should automatically select a profession checkbox' do
    @driver.find_element(:id, 'profession-0').click
    expect(@driver.find_element(:id, 'profession-0').selected?).to eq(true)
  end

  it 'should automatically select a profession checkbox' do
    @driver.find_element(:id, 'profession-1').click
    expect(@driver.find_element(:id, 'profession-1').selected?).to eq(true)
  end

  # it 'should automatically click on the Hybrid Framework link' do
  #   @driver.find_element(:xpath, 'http://toolsqa.wpengine.com/wp-content/uploads/2014/04/OnlineStore.zip').click()
  # end

end
