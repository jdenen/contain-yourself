Feature: GET random number

  Scenario: GET random number between 0 and 10
    When I get a random number
    Then it is between 0 and 10

  Scenario Outline: GET random number between 0 and n
    When I get a random number with a max of <n>
    Then it is between 0 and <n>

    Examples:
    |   n |
    |   1 |
    |   2 |
    |   5 |
