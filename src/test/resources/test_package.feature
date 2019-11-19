Feature: test package endpoints

  Scenario Outline: check endpoints
    Given content type is JSON
    When the client performs POST request on "<endpoint>"
    Then status code is 200
    And response is not empty
    And response contains property "version" with value "1.0.10"
    And response contains an array "keywords" with value "templating"
    And response contains an array "keywords" with value "package"
    And response contains an array "keywords" with value "league"

    Examples:
    |endpoint                    |
    |/p/league/plates.json       |
    |/packages/league/plates.json|
