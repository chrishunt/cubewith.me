Feature: Time Rubik's Cube solve
  In order to see how fast I am
  As a speedcuber
  I want to be able to time myself solving the cube

  Scenario: Start the timer
    Given I am on the timer page
    When I press the 'Start' button
    And I wait 0.5 seconds
    Then I should see a non-zero time on the timer
    And I should not see the 'Start' button
    And I should see the 'Stop' button
