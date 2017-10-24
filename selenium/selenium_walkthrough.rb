require 'selenium-webdriver'

Selenium::WebDriver::Chrome.driver_path='/usr/local/bin/chromedriver'

@driver = Selenium::WebDriver.for :chrome

@driver.get 'http://toolsqa.com/automation-practice-form/'

@driver.find_element(:name, 'firstname').displayed?

@driver.find_element(:name, 'firstname').send_keys('sophie')
puts @driver.find_element(:name, 'firstname')['value']

sleep 3
