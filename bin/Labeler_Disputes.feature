Feature: Labeler Disputes
   
   Background: 
   Given user is on home page
    When user login with valid credits userName passWord
    #----Home Page
    Then user should land on my user page


  @Labeler_Disputes
   Scenario Outline: Labeler Disputes
    Given user getting client program info from configuration proparty for "Labeler Disputes" 
    Then user should validate Business and Product lines for selected Program from Configuration Property
    When user Select option from "Business Line" dropdawn for selected Program from Configuration Property
    And user select option from Module List as "Rebate Operations" dropdawn for selected Program from Configuration Property
    And click go
    Given ProgramAbrvCode on Configuration Property and user should search existing Disputes for resolution
    # Resolved
    Then user select "Labeler Disputes" tab for on the "Rebate Operations" screen
    When user select "Product Line" on "Labeler Disputes" screen
    And user select "Client Contract" on "Labeler Disputes" screen 
    And user select "Program" on "Labeler Disputes" screen
    And user enter "Manufacturer Code" on "Labeler Disputes" screen  
    And user enter "NDC" on "Labeler Disputes" screen 
    And user enter "Invoice YearQtr From" on "Labeler Disputes" screen 
    And user enter "Invoice YearQtr To" on "Labeler Disputes" screen
    And click on "Search" tab on "Labeler Disputes" screen
    Then user should validate existing record between Application "BalanceAdjustmentsTable" and DB for "Resolve" Dispute
    And user should resolute the dispute on "Dispute Resolution" screen by entering "Manufacturer Contact Date" 
    And user should resolute the dispute on "Dispute Resolution" screen by entering "Notes" 
    And user should resolute the dispute on "Dispute Resolution" screen by entering "SAVE"  
    When user should valiadate proper screen msg "Dispute has been resolved sucessfully." 
   #search after resolve
    Then user select "Labeler Disputes" tab for on the "Rebate Operations" screen
    When user select "Product Line" on "Labeler Disputes" screen
    And user select "Client Contract" on "Labeler Disputes" screen 
    And user select "Program" on "Labeler Disputes" screen
    And user enter "Manufacturer Code" on "Labeler Disputes" screen  
    And user enter "NDC" on "Labeler Disputes" screen 
    And user enter "Invoice YearQtr From" on "Labeler Disputes" screen 
    And user enter "Invoice YearQtr To" on "Labeler Disputes" screen
    And click on "Search" tab on "Labeler Disputes" screen
    #add new
    When user should valiadate proper screen msg "No records matching your search criteria were found."
    Then user should click on "ADD DISPUTE" on "Labeler Disputes" screen 
    And user should validate table "disputeResolutionAddDisputesTable" on "Labeler Disputes" screen
    When data displayed on "Add Disputes Table" user should select the record, enter Disputed Units and select Disputed Code
    When user should click on "SAVE Disputes" to add new dispute 
    Then user Should handle web-based pop-up box and click OK
    When user should valiadate proper screen msg "Disputes added successfully" 
    #search after add new
    Then user select "Labeler Disputes" tab for on the "Rebate Operations" screen
    When user select "Product Line" on "Labeler Disputes" screen
    And user select "Client Contract" on "Labeler Disputes" screen 
    And user select "Program" on "Labeler Disputes" screen
    And user enter "Manufacturer Code" on "Labeler Disputes" screen  
    And user enter "NDC" on "Labeler Disputes" screen 
    And user enter "Invoice YearQtr From" on "Labeler Disputes" screen 
    And user enter "Invoice YearQtr To" on "Labeler Disputes" screen
    And click on "Search" tab on "Labeler Disputes" screen
     #edit
    Then user should validate existing record between Application "BalanceAdjustmentsTable" and DB for "EditDetails" Dispute
    When user click on "ADD MORE" on "Edit Dispute Resolution" Screen for edit 
    And user enter "Disputed Units" on "Add More Dispute Resolution" screen
    When user select "Dispute Code" on "Add More Dispute Resolution" screen
    And user enter "Manufacturer Contact Date" on "Add More Dispute Resolution" screen 
    And user enter "Notes" on "Add More Dispute Resolution" screen
    And click on "SAVE" tab on "Add More Dispute Resolution" screen
    When user should valiadate proper screen msg "Dispute has been saved sucessfully." 
    #search after edit
    Then user select "Labeler Disputes" tab for on the "Rebate Operations" screen
    When user select "Product Line" on "Labeler Disputes" screen
    And user select "Client Contract" on "Labeler Disputes" screen 
    And user select "Program" on "Labeler Disputes" screen
    And user enter "Manufacturer Code" on "Labeler Disputes" screen  
    And user enter "NDC" on "Labeler Disputes" screen 
    And user enter "Invoice YearQtr From" on "Labeler Disputes" screen 
    And user enter "Invoice YearQtr To" on "Labeler Disputes" screen
    And click on "Search" tab on "Labeler Disputes" screen
    
    #Report validation: 
   
  Given  "Sysdate" after "Labeler_Disputes" user pulling records for <Program> from the "DISPUTE_TRACKER" table
   #Given  "13-JUN-2023" after "Labeler_Disputes" user pulling records for <Program> from the "DISPUTE_TRACKER" table
   
    
    
    Examples: 
      | Program                                                       |  
      | "Note: Program abv code reading from Configuration Proparty"  |      
     
    
   
    
    	 
    


