Feature: User Login
as a User
i want to be able to login to the bbc site

  Scenario: If I login with invalid credentials I receive a valid error
    Given I am on the sign in page
    When I enter an incorrect username and password
    And I click login
    Then I receive a valid error
    @test

  Scenario: If I input an incorrect password when logging in I receive a password error
    Given I am on the sign in page
    When I enter a valid username
    And I enter an invalid password
    And I click login
    Then I receive a valid password error
