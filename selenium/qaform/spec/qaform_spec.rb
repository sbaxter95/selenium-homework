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

  # it 'should click on the partial link at the top of the form' do
  #   @driver.find_element(:link_text, 'Partial Link Test').click
  #   @driver.navigate().back()
  # end
  #
  # it 'should click on the link test at the top of the form' do
  #   @driver.find_element(:link_text, 'Link Test').click
  #   @driver.navigate().back()
  # end

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

  it 'should automatically click on the Hybrid Framework link' do
    @driver.find_element(:link_text, 'Selenium Automation Hybrid Framework').click
    @driver.find_element(:link_text, 'Test File to Download').click
  end

  it 'should be able to check automation tool checkboxes' do
    @driver.find_element(:id, 'tool-0').click
    expect(@driver.find_element(:id, 'tool-0').selected?).to eq(true)
    @driver.find_element(:id, 'tool-1').click
    expect(@driver.find_element(:id, 'tool-1').selected?).to eq(true)
    @driver.find_element(:id, 'tool-2').click
    expect(@driver.find_element(:id, 'tool-2').selected?).to eq(true)
  end

  it 'should be able to select all of the continents in the drop down menu' do
    dropdown = @driver.find_element(id: 'continents')
    select_list = Selenium::WebDriver::Support::Select.new(dropdown)

    select_list.select_by(:text, 'Asia')
    selected_option = select_list.selected_options[0].text
    expect(selected_option).to eql 'Asia'

    select_list.select_by(:text, 'Europe')
    selected_option = select_list.selected_options[0].text
    expect(selected_option).to eql 'Europe'

    select_list.select_by(:text, 'Africa')
    selected_option = select_list.selected_options[0].text
    expect(selected_option).to eql 'Africa'

    select_list.select_by(:text, 'Australia')
    selected_option = select_list.selected_options[0].text
    expect(selected_option).to eql 'Australia'

    select_list.select_by(:text, 'South America')
    selected_option = select_list.selected_options[0].text
    expect(selected_option).to eql 'South America'

    select_list.select_by(:text, 'North America')
    selected_option = select_list.selected_options[0].text
    expect(selected_option).to eql 'North America'

    select_list.select_by(:text, 'Antartica')
    selected_option = select_list.selected_options[0].text
    expect(selected_option).to eql 'Antartica'

  end

  it 'should be able to select Selenium commands from the selection box' do
    selectmenu = @driver.find_element(id: 'selenium_commands')
    select_list = Selenium::WebDriver::Support::Select.new(selectmenu)
    select_list.select_by(:text, 'Browser Commands')
    selected_option = select_list.selected_options[0].text
    expect(selected_option).to eq('Browser Commands')
    select_list.deselect_by(:text, 'Browser Commands')
  end

end
