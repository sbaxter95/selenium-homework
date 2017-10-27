require 'capybara/dsl'

class SignInPage
  include Capybara::DSL

  SIGN_IN_LINK = 'https://account.bbc.com/signin'
  USERNAME_FIELD_ID = '#user-identifier-input'
  PASSWORD_FIELD_ID = '#password-input'
  SUBMIT_BUTTON_ID = '#submit-button'
  ERROR_DIV = '//*[@id="form-message-username"]'

  def visit_sign_in_page
    visit(SIGN_IN_LINK)
  end

  def username_field
    find(USERNAME_FIELD_ID)
  end

  def input_username(username)
    username_field.send_keys(username)
  end

  def password_field
    find(PASSWORD_FIELD_ID)
  end

  def input_password(password)
    password_field.send_keys(password)
  end

  def submit_button
    find(SUBMIT_BUTTON_ID)
  end

  def click_submit_button
    submit_button.click
  end

end
