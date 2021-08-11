#language: en

Feature: Search games by category

  @gamesByRating
  Scenario: Filter games that contain the category 'M' in their rate
    Given a set of games1
      | NAME                       | RELEASE DATE | DEVELOPER            | RATE |
      | The Witcher 3: Wild Hunt   | 2015         | CD Projekt           | M    |
      | Splatoon                   | 2016         | Nintendo             | T    |
      | Super Smash Bros. Ultimate | 2018         | Bandai Namco Studios | E    |
      | The Last of Us             | 2013         | Naughty Dog          | M    |
    Given the user selects one or more ratings1: M
    When the user search games by1 ratings
    Then 2 games were found
    And the names of these games are1
      | NAME                     |
      | The Witcher 3: Wild Hunt |
      | The Last of Us           |
    And the following message is displayed1: 2 games were found.


  @gamesByRating
  Scenario: Filter games by category without finding result
    Given a set of games1
      | NAME                       | RELEASE DATE | DEVELOPER            | RATE |
      | The Witcher 3: Wild Hunt   | 2015         | CD Projekt           | M    |
      | Splatoon                   | 2016         | Nintendo             | T    |
      | Super Smash Bros. Ultimate | 2018         | Bandai Namco Studios | E    |
      | The Last of Us             | 2013         | Naughty Dog          | M    |
    Given the user selects one or more ratings1: D
    When the user search games by1 ratings
    Then 0 games were found
    And the following message is displayed1: No game with the specified rating was found.