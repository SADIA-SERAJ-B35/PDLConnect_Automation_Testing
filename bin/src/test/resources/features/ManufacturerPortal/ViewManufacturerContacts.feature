@tag
Feature: Verify the Manufacturer Portal
  I want to use this template for verifying the Manufacturer portal functionality.

  
  Scenario: View Manufacturer contracts Screen
    Given user is on home page
    Then user should land on my user page
    When Navigate to Menu > Manufacturer Portal > View Manufacturer Contacts.
    And I Check the fields displayed in the view Manufacturer Contracts screen
    And Select the Manufatcure dropdown value and perform a search
    Then The results should be displayed as per the selected criteria.
    And Select the date received and perform the search.
    Then The results should be displayed as per the selected criteria.
    And Select the name and perform the search.
    Then The results should be displayed as per the selected criteria.
