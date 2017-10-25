require 'capybara/dsl'

class SignInPage
  include Capybara::DSL

  USERNAME_FIELD_ID = 'user-identifier-input'
  PASSWORD_FIELD_ID = 'password-input'
  SUBMIT_BUTTON_ID = 'submit-button'

end
