Given("I am on the sign in page") do
  @bbcsite = BbcSite.new
  @bbcsite.bbc_sign_in_page.visit_sign_in_page
end


When("I enter an incorrect username and password") do
  @bbcsite.bbc_sign_in_page.input_to_username_field('jdjsahash')
  @bbcsite.bbc_sign_in_page.input_to_password_field('sabdsadba')
end

And("I click login") do
  @bbcsite.bbc_sign_in_page.click_sign_in_button
  sleep 5
end

Then("I receive a valid error") do
  expect(@bbcsite.bbc_sign_in_page.get_error_message_text).to eq @bbcsite.bbc_sign_in_page.login_error_text
end

When("I enter a valid username") do
  @bbcsite.bbc_sign_in_page.input_to_username_field('random995@gmail.com')
end


When("I enter an invalid password") do
  @bbcsite.bbc_sign_in_page.input_to_password_field('sabdsadba')
end

Then("I receive a valid password error") do
  expect(@bbcsite.bbc_sign_in_page.password_error_message).to eq @bbcsite.bbc_sign_in_page.password_error_message
end
