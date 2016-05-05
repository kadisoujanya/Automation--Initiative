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
	
	 
	 
	@Scenario3-CHAITANYA-ONTIME-TR1
  Scenario: CHAITANYA-ONTIME-TR1

  Given I setup the clients
  When I entered the values into client from "Input" sheet
    |Createclient.xlsx|
  Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	|Scenario2-Chaithanyaprod-ONTIME-TR1-Newcreateloan.xlsx|
  Then I verified the "Summary" details successfully 
	|Scenario2-Chaithanyaprod-ONTIME-TR1-Newcreateloan.xlsx|
  And I verified the "Repayment Schedule" details successfully 
    |Scenario2-Chaithanyaprod-ONTIME-TR1-Newcreateloan.xlsx|
  Then I verified the "Transactions" details and read the transaction Id
	|Scenario2-Chaithanyaprod-ONTIME-TR1-Newcreateloan.xlsx|	
  Then I make repayment and verified the following tabs
    |Scenario2-Chaithanyaprod-ONTIME-TR1-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|	
  
  
  
	@Scenario3-CHAITANYA-LATE-TR1
  Scenario: CHAITANYA-LATE-TR1

  Given I setup the clients
  When I entered the values into client from "Input" sheet
    |Createclient.xlsx|
  Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	|Scenario3-Chaithanyaprod-LATE-TR1-Newcreateloan.xlsx|
  Then I verified the "Summary" details successfully 
	|Scenario3-Chaithanyaprod-LATE-TR1-Newcreateloan.xlsx|
  And I verified the "Repayment Schedule" details successfully 
    |Scenario3-Chaithanyaprod-LATE-TR1-Newcreateloan.xlsx|
  Then I verified the "Transactions" details and read the transaction Id
	|Scenario3-Chaithanyaprod-LATE-TR1-Newcreateloan.xlsx|	
  Then I make repayment and verified the following tabs
    |Scenario3-Chaithanyaprod-LATE-TR1-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|	


	@Scenario4-CHAITANYA-EARLY-TR1
  Scenario: CHAITANYA-EARLY-TR1

  Given I setup the clients
  When I entered the values into client from "Input" sheet
    |Createclient.xlsx|
  Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	|Scenario4-Chaithanyaprod-EARLY-TR1-Newcreateloan.xlsx|
  Then I verified the "Summary" details successfully 
	|Scenario4-Chaithanyaprod-EARLY-TR1-Newcreateloan.xlsx|
  And I verified the "Repayment Schedule" details successfully 
    |Scenario4-Chaithanyaprod-EARLY-TR1-Newcreateloan.xlsx|
  Then I verified the "Transactions" details and read the transaction Id
	|Scenario4-Chaithanyaprod-EARLY-TR1-Newcreateloan.xlsx|	
  Then I make repayment and verified the following tabs
    |Scenario4-Chaithanyaprod-EARLY-TR1-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|	
	
	
	
	@Scenario5-CHAITANYA-ONTIME-TR2
  Scenario: CHAITANYA-ONTIME-TR2

  Given I setup the clients
  When I entered the values into client from "Input" sheet
    |Createclient.xlsx|
  Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	|Scenario5-Chaithanyaprod-TR2-ONTIME-Newcreateloan1.xlsx|
  Then I verified the "Summary" details successfully 
	|Scenario5-Chaithanyaprod-TR2-ONTIME-Newcreateloan1.xlsx|
  And I verified the "Repayment Schedule" details successfully 
    |Scenario5-Chaithanyaprod-TR2-ONTIME-Newcreateloan1.xlsx|
  Then I verified the "Transactions" details and read the transaction Id
	|Scenario5-Chaithanyaprod-TR2-ONTIME-Newcreateloan1.xlsx|	
  Then I make repayment and verified the following tabs
    |Scenario5-Chaithanyaprod-TR2-ONTIME-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|	
   And I disburse loan from "NewLoanInput" sheet
    |Scenario5-Chaithanyaprod-TR2-ONTIME-Newcreateloan2.xlsx|
  Then I verified the "Summary" details successfully 
	|Scenario5-Chaithanyaprod-TR2-ONTIME-Newcreateloan2.xlsx|
  And I verified the "Repayment Schedule" details successfully 
    |Scenario5-Chaithanyaprod-TR2-ONTIME-Newcreateloan2.xlsx|
  Then I verified the "Transactions" details and read the transaction Id
	|Scenario5-Chaithanyaprod-TR2-ONTIME-Newcreateloan2.xlsx|	
  Then I make repayment and verified the following tabs
    |Scenario5-Chaithanyaprod-TR2-ONTIME-Makerepayment2.xlsx|Input|Summary|Repayment Schedule|Transactions|	
  	
  	
  	
  	@Scenario6-CHAITANYA-EARLY-TR2
  Scenario: CHAITANYA-EARLY-TR2

  Given I setup the clients
  When I entered the values into client from "Input" sheet
    |Createclient.xlsx|
  Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	|Scenario6-Chaithanyaprod-TR2-EARLY-Newcreateloan1.xlsx|
  Then I verified the "Summary" details successfully 
	|Scenario6-Chaithanyaprod-TR2-EARLY-Newcreateloan1.xlsx|
  And I verified the "Repayment Schedule" details successfully 
    |Scenario6-Chaithanyaprod-TR2-EARLY-Newcreateloan1.xlsx|
  Then I verified the "Transactions" details and read the transaction Id
	|Scenario6-Chaithanyaprod-TR2-EARLY-Newcreateloan1.xlsx|	
  Then I make repayment and verified the following tabs
    |Scenario6-Chaithanyaprod-TR2-EARLY-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|	
   And I disburse loan from "NewLoanInput" sheet
    |Scenario6-Chaithanyaprod-TR2-EARLY-Newcreateloan2.xlsx|
  Then I verified the "Summary" details successfully 
	|Scenario6-Chaithanyaprod-TR2-EARLY-Newcreateloan2.xlsx|
  And I verified the "Repayment Schedule" details successfully 
    |Scenario6-Chaithanyaprod-TR2-EARLY-Newcreateloan2.xlsx|
  Then I verified the "Transactions" details and read the transaction Id
	|Scenario6-Chaithanyaprod-TR2-EARLY-Newcreateloan2.xlsx|	
  Then I make repayment and verified the following tabs
    |Scenario6-Chaithanyaprod-TR2-EARLY-Makerepayment2.xlsx|Input|Summary|Repayment Schedule|Transactions|	
 	
 	
 	
 	@Scenario6-CHAITANYA-LATE-TR2
  Scenario: CHAITANYA-LATE-TR2

  Given I setup the clients
  When I entered the values into client from "Input" sheet
    |Createclient.xlsx|
  Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	|Scenario7-Chaithanyaprod-TR2-LATE-Newcreateloan1.xlsx|
  Then I verified the "Summary" details successfully 
	|Scenario7-Chaithanyaprod-TR2-LATE-Newcreateloan1.xlsx|
  And I verified the "Repayment Schedule" details successfully 
    |Scenario7-Chaithanyaprod-TR2-LATE-Newcreateloan1.xlsx|
  Then I verified the "Transactions" details and read the transaction Id
	|Scenario7-Chaithanyaprod-TR2-LATE-Newcreateloan1.xlsx|	
  Then I make repayment and verified the following tabs
    |Scenario7-Chaithanyaprod-TR2-LATE-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|	
   And I disburse loan from "NewLoanInput" sheet
    |Scenario7-Chaithanyaprod-TR2-LATE-Newcreateloan2.xlsx|
  Then I verified the "Summary" details successfully 
	|Scenario7-Chaithanyaprod-TR2-LATE-Newcreateloan2.xlsx|
  And I verified the "Repayment Schedule" details successfully 
    |Scenario7-Chaithanyaprod-TR2-LATE-Newcreateloan2.xlsx|
  Then I verified the "Transactions" details and read the transaction Id
	|Scenario7-Chaithanyaprod-TR2-LATE-Newcreateloan2.xlsx|	
  Then I make repayment and verified the following tabs
    |Scenario7-Chaithanyaprod-TR2-LATE-Makerepayment2.xlsx|Input|Summary|Repayment Schedule|Transactions|	
 	  