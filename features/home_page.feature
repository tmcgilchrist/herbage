Feature: Navigate to main page

  Scenario: Load main page
    Given I am on the home page
    Then I should see title "Herbage"
    And I should see sections
    | Selector |
    | #nav     |
    | #footer  |
    | #main    |

  Scenario: Validate navigation
    Given I am on the home page
    Then I should see section 'nav'
    And I should see links
    | Title | Url    |
    | About | /about |
