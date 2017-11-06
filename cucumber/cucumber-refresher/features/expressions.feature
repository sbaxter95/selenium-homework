Feature: cucumber expressions
  As a user I want to see how cucumber scenarios work

  Scenario: i am able to utilise integers
    Given I provide an integer of 3
    Then I will have 3 cucumbers in my belly

  # Scenario: i am able to utilise floats
  #   Given I provide an float of 4.5
  #   Then I will have 4.5 aubergines in my belly
  #
  # Scenario: i am able to utilise strings
  #   Given I provide the string 'mash'
  #   Then I will have chosen 'mash'
  #
  # @carrot
  Scenario: i am able to utilise a float and a string
    Given I provide the float 20.5 and the string 'carrots'
    Then I will have 20.5 'carrots'
