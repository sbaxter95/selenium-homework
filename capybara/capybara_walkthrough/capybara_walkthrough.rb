require 'capybara'

Capybara::register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

driver = Capybara::Session.new(:chrome)

driver.visit 'http://toolsqa.com/automation-practice-form/'

driver.fill_in('firstname', with: 'Sophie')
driver.fill_in('lastname', with: 'Baxter')
driver.choose('Female')
driver.check('Automation Tester')
sleep 5
