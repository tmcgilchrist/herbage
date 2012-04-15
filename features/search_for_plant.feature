Feature: Searching for a plant

  Background: Given the following plants exist
 | Name      | Description            |
 | Camelia   | Pretty flowering plant |
 | Agapantha | Nasty flowering plant  |

  Scenario: Search for plant by name
    Given I am on the search page
    When I enter "Camelia"
    And I press "Enter"
    Then I should see "Camelia" within "#search-results"
