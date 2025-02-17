Feature: Login

  @pdlLoginwithCredentials
  Scenario: Scenario Description: Login :
    #----Login Page
    Given user is on home page
    When user login with valid credits userName passWord
    #----Home Page
    Then user should land on my user page
    And user reading page info

  @ealLogin
  Scenario: Scenario Description: Login :
    Given user is on home page
    Then user should land on my user page
