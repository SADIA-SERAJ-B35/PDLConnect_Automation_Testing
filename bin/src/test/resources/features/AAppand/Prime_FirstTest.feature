
Feature: Title of your feature
  I want to use this template for my feature file

  @tag1
  
  @PrimeFirstTest
   Scenario Outline: Login
  
   Given user is on home page
 
    # When user login with valid credits userName passWord
     When user Select option from <BusinessLine> dropdawn
      And user select option from <Mudule List> dropdawn
     And click go
    
    
     Examples: 
     
      | BusinessLine | Mudule List         | ProductLine    |  
      | "Federal"    | "Rebate Operations" | "Medicaid MCO"  | 
