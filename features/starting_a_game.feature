
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

  Scenario: Placing ships
    Given I am on the game page
    And I click on placeship
    Then the ship should be placed on the board

  Scenario: Playing the game
    Given I am on the game page
    And I click Fire
    Given I am on the miss page
    Then I should see "Miss"

  Scenario: Setting up the board
    Given I am on the game page
    Then I should see a grid
    And I enter a coordinate
    And I click Fire
    Then I should see "Miss"

  Scenario: 
    Given I am on the game page
    And I enter a coordinate "A5"
    And I click Fire
    Then I should see "Hit"







