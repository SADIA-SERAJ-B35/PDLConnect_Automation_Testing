Feature: Registration
  I want to test the Registration functionality on the QAFOX website

  @smoke @sanity
  Scenario:01_01 Scenario Description: Register with valid details :Reg
    Given I launch the QAFOX homepage
    When I click on the "Register" link
    And I enter valid "First Name", "Last Name", "Email", and "Password"
    And I confirm the password correctly
    Then I click on the "Submit" button
    And I should see a success message "Your registration completed"

  @NegativeTest
  Scenario Outline: Register with invalid or incomplete details
    Given I launch the QAFOX homepage
    When I click on the "Register" link
    And I enter "<FirstName>" and "<LastName>" as personal details
    And I enter "<Email>" as the email
    And I enter "<Password>" as the password
    And I enter "<ConfirmPassword>" as the confirm password
    Then I click on the "Submit" button
    And I should see an error message "<ExpectedMessage>"

    Examples:
      | FirstName | LastName | Email                  | Password  | ConfirmPassword | ExpectedMessage                                        |
      | John      | Doe      | [email protected]    | pass123   | pass12          | "Error: Password and Confirm Password do not match."   |
      | Jane      | Smith    | [email protected]  | pass      | pass            | "Error: Password must have at least 6 characters."     |
      | Bob       | White    | [email protected]  | pass123   | pass123         | "Error: Email is already registered."                  |
