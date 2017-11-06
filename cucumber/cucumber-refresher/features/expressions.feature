Feature: cucumber expressions
  As a user I want to see how cucumber scenarios work

  Scenario: I am able to utilise integers
    Given I provide an integer of 3
    Then I will have 3 types of this veg in my belly:
      | cucumber |
      | beetroot |
      |  carrot  |

  Scenario: I am able to utilise floats and carrots
    Given I provide an floats of 4.5 and carrot
    Then I will have 4.5 carrot in my belly

  @beetroot
  Scenario: I am able to utilise floats and beetroot
    Given I provide an floats of 4.5 and beetroot
    Then I will have 4.5 beetroot in my belly
