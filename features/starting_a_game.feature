
Feature: Starting the game
  In order to play battleships
  As a nostalgic player
  I want to start a new game

  Scenario: Landing on page
    Given I am on the homepage
    Then I should see "Would you like to play Battleships?!"

  Scenario: Register 1 player (player entered)
    Given I am on newgame page
    And I enter my name 
    And click on submit
    Then I should see "Welcome to Battleships"

  Scenario: Playing the game
    Given I am on the game page
    And I click fire
    Then I should see "Miss"


