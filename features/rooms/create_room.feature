Feature: Create a room
  In order to race other people on the Rubik's Cube
  As a speedcuber
  I want to create a room

  Scenario: I do not already have a room setup
    Given I visit the homepage
    When I click '+'
    Then I should be in a room
    And I should see 'room id'
