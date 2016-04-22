Feature:CHAITANYA

Background:
	Given I navigate to mifos
	And I login into mifos site using "Login" excel sheet
		| Login.xlsx  |
	Then I should see logged in successfully
	
	@Scenario3-CHAITANYA-Undodisbursal-TR2
  Scenario: CHAITANYA-Undodisbursal-TR2

  Given I setup the clients
  When I entered the values into client from "Input" sheet
    |Createclient.xlsx|
  Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	|Scenario1-Chaithanyaprod-TR2-Newcreateloan1.xlsx|
  Then I verified the "Summary" details successfully 
	|Scenario1-Chaithanyaprod-TR2-Newcreateloan1.xlsx|
  And I verified the "Repayment Schedule" details successfully 
    |Scenario1-Chaithanyaprod-TR2-Newcreateloan1.xlsx|
  Then I verified the "Transactions" details and read the transaction Id
	|Scenario1-Chaithanyaprod-TR2-Newcreateloan1.xlsx|	
  Then I make repayment and verified the following tabs
    |Scenario1-Chaithanyaprod-TR1-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|	
   And I disburse loan from "NewLoanInput" sheet
    |Scenario1-Chaithanyaprod-TR2-Newcreateloan2.xlsx|
  Then I verified the "Summary" details successfully 
	|Scenario1-Chaithanyaprod-TR2-Newcreateloan2.xlsx|
  And I verified the "Repayment Schedule" details successfully 
    |Scenario1-Chaithanyaprod-TR2-Newcreateloan2.xlsx|
  Then I verified the "Transactions" details and read the transaction Id
	|Scenario1-Chaithanyaprod-TR2-Newcreateloan2.xlsx|   
  Then I Do Undo Last Disbursement
    |Scenario1-Chaithanyaprod-TR2-Makeundolastdisbursment1.xlsx|Undo Last Disbursel|
 Then I verified the "Summary" details successfully 
	|Scenario1-Chaithanyaprod-TR2-Makeundolastdisbursal1.xlsx|
  And I verified the "Repayment Schedule" details successfully 
    |Scenario1-Chaithanyaprod-TR2-Makeundolastdisbursal1.xlsx|
  Then I verified the "Transactions" details and read the transaction Id
	|Scenario1-Chaithanyaprod-TR2-Makeundolastdisbursal1.xlsx|  