#language: en

Feature: Search games by developer study

  @gamesByDeveloper
  Scenario: Filter games that contain the word 'Nintendo' in their developer study name
    Given a set of games2
      | NAME                       | RELEASE DATE | DEVELOPER            | RATE |
      | The Witcher 3: Wild Hunt   | 2015         | CD Projekt           | M    |
      | Splatoon                   | 2016         | Nintendo             | T    |
      | Super Smash Bros. Ultimate | 2018         | Bandai Namco Studios | E    |
      | The Last of Us             | 2013         | Naughty Dog          | M    |
    Given the user enters the developer2: Nintendo
    When the user search games by2 developer
    Then 1 games will match2
    And the names of these games are2
      | NAME     |
      | Splatoon |
    And the following message is displayed2: A game developed by Nintendo was found.


  @gamesByDeveloper
  Scenario: Filter games by developer name without finding result
    Given a set of games2
      | NAME                       | RELEASE DATE | DEVELOPER            | RATE |
      | The Witcher 3: Wild Hunt   | 2015         | CD Projekt           | M    |
      | Splatoon                   | 2016         | Nintendo             | T    |
      | Super Smash Bros. Ultimate | 2018         | Bandai Namco Studios | E    |
      | The Last of Us             | 2013         | Naughty Dog          | M    |
    Given the user enters the developer2: xyz
    When the user search games by2 developer
    Then 0 games will match2
    And the following message is displayed2: No game developed by xyz found