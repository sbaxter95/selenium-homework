require 'capybara'
require_relative '../lib/bbc_site.rb'

RSpec.configure do |config|
  config.formatter = :documentation
end

Capybara::register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
  config.default_driver = :chrome
end
