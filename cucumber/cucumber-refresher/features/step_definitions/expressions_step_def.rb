# Given("I provide an integer of {int}") do |int|
#   @int_number = int #pass in number to int parameter
# end
#
# Then("I will have {int} cucumbers in my belly") do |int|
#   expect(@int_number).to eq int
# end
#
# Given("I provide an float of {float}") do |float|
#   @float_number = float #pass in number to int parameter
# end
#
# Then("I will have {float} aubergines in my belly") do |float|
#   expect(@float_number).to eq float
# end
#
# Given("I provide the string {string}") do |string|
#   @string = string
# end
#
# Then("I will have chosen {string}") do |string|
#   expect(@string).to eq 'mash'
# end
#
# Given("I provide the float {float} and the string {string}") do |float, string|
#   @float = float
#   @string = string
# end
#
# Then("I will have {float} {string}") do |float, string|
#   expect(@float).to eq 20.5
#   expect(@string).to eq 'carrots'
# end

Given(/^I provide an integer of (.*)$/) do |int|
  @int_number = int
end

Then(/^I will have (.*) cucumbers in my belly$/) do |int|
  expect(@int_number).to eq int
end

Given(/^I provide the float (\d*\D\d*) and the string (.*)$/) do |float, string|
  @float = float
  @string = string
end

Then(/^I will have (\d*\D\d*) (.*)$/) do |float, string|
  expect(@float).to eq float
  expect(@string).to eq string
end
