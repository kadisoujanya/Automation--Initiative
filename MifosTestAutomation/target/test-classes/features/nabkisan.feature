Feature:NABKISAN

Background:
	Given I navigate to mifos
	And I login into mifos site using "Login" excel sheet
		| Login.xlsx  |
	Then I should see logged in successfully
	
	
@Scenario1-NABKISAN-EARLY-TR1
  Scenario: NABKISAN-EARLY-TR1
  Given I setup the product loan "Setup"
	| Productloannavigation.xlsx |
 Then I entered the values into product loan from "ProductLoanInput" Sheet
	|Scenario1-NABKISAN-EARLY-TR1-Loanproduct.xlsx|
  Then I should see product loan created successfully	from "ProductLoanOutput" Sheet
	|Scenario1-NABKISAN-EARLY-TR1-Loanproduct.xlsx|
  Given I setup the clients
  When I entered the values into client from "Input" sheet
    |Createclient.xlsx|
  Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	|Scenario4-NABKISAN-ONTIME-TR1-Newcreateloan1.xlsx|
  Then I verified the "Summary" details successfully 
	|Scenario1-NABKISAN-EARLY-TR1-Newcreateloan1.xlsx|
  And I verified the "Repayment Schedule" details successfully 
    |Scenario1-NABKISAN-EARLY-TR1-Newcreateloan1.xlsx|
  Then I verified the "Transactions" details and read the transaction Id
	|Scenario1-NABKISAN-EARLY-TR1-Newcreateloan1.xlsx|	
  Then I make repayment and verified the following tabs
    |Scenario1-NABKISAN-EARLY-TR1-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|

   
@Scenario2-NABKISAN-LATE-TR1
  Scenario: NABKISAN-LATE-TR1

  Given I setup the clients
  When I entered the values into client from "Input" sheet
    |Createclient.xlsx|
  Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	|Scenario2-NABKISAN-LATE-TR1-Newcreateloan1.xlsx|
  Then I verified the "Summary" details successfully 
	|Scenario2-NABKISAN-LATE-TR1-Newcreateloan1.xlsx|
  And I verified the "Repayment Schedule" details successfully 
    |Scenario2-NABKISAN-LATE-TR1-Newcreateloan1.xlsx|
  Then I verified the "Transactions" details and read the transaction Id
	|Scenario2-NABKISAN-LATE-TR1-Newcreateloan1.xlsx|	
  Then I make repayment and verified the following tabs
    |Scenario2-NABKISAN-LATE-TR1-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
   
   
@Scenario3-NABKISAN-ONTIME-TR1
  Scenario: NABKISAN-ONTIME-TR1

  Given I setup the clients
  When I entered the values into client from "Input" sheet
    |Createclient.xlsx|
  Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	|Scenario3-NABKISAN-ONTIME-TR1-Newcreateloan1.xlsx|
  Then I verified the "Summary" details successfully 
	|Scenario3-NABKISAN-ONTIME-TR1-Newcreateloan1.xlsx|
  And I verified the "Repayment Schedule" details successfully 
    |Scenario3-NABKISAN-ONTIME-TR1-Newcreateloan1.xlsx|
  Then I verified the "Transactions" details and read the transaction Id
	|Scenario3-NABKISAN-ONTIME-TR1-Newcreateloan1.xlsx|	
  Then I make repayment and verified the following tabs
    |Scenario3-NABKISAN-ONTIME-TR1-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
 
 @Scenario3-NABKISAN-ONTIME-Undo
  Scenario: NABKISAN-ONTIME-TR1

  Given I setup the clients
  When I entered the values into client from "Input" sheet
    |Createclient.xlsx|
  Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	|Scenario6-Chaithanyaprod-EARLY-TR2-Newcreateloan1.xlsx|
  And I disburse loan from "NewLoanInput" sheet
    |Scenario6-Chaithanyaprod-EARLY-TR2-Newcreateloan2.xlsx| 
  Then I Do Undo Last Disbursement 
    |Scenario6-Chaithanyaprod-EARLY-TR2-Newcreateloan2.xlsx|Undo Last Disbursel|
    
    
    
    
 @Scenario5-NABKISAN-ONTIME-TR1-overpaid
  Scenario: NABKISAN-ONTIME-TR1-overpaid

  Given I setup the clients
  When I entered the values into client from "Input" sheet
    |Createclient.xlsx|
  Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	|Scenario5-NABKISAN-ONTIME-TR1-overpaid-Newcreateloan1.xlsx|
#  Then I verified the "Summary" details successfully 
#	|Scenario5-NABKISAN-ONTIME-TR1-overpaid-Newcreateloan1.xlsx|
#  And I verified the "Repayment Schedule" details successfully 
#    |Scenario5-NABKISAN-ONTIME-TR1-overpaid-Newcreateloan1.xlsx|
  Then I verified the "Transactions" details and read the transaction Id
	|Scenario5-NABKISAN-ONTIME-TR1-overpaid-Newcreateloan1.xlsx|	
  Then I make repayment and verified the following tabs
    |Scenario5-NABKISAN-ONTIME-TR1-overpaid-Makerepayment1.xlsx|Input|Transactions|
  Then I make repayment and verified the following tabs
    |Scenario5-NABKISAN-ONTIME-TR1-overpaid-Makerepayment2.xlsx|Input|Transactions|
    



@Scenario6-NABKISAN-ONTIME-TR1-Repay
  Scenario: NABKISAN-ONTIME-TR1-Repay

  Given I setup the clients
  When I entered the values into client from "Input" sheet
    |Createclient.xlsx|
  Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	|Scenario6-NABKISAN-ONTIME-TR1-Newcreateloan1.xlsx|
#  Then I verified the "Summary" details successfully 
#	|Scenario6-NABKISAN-ONTIME-TR1-Newcreateloan1.xlsx|
#  And I verified the "Repayment Schedule" details successfully 
#    |Scenario6-NABKISAN-ONTIME-TR1-Newcreateloan1.xlsx|
#   Then I make repayment and verified the following tabs
#    |Scenario6-NABKISAN-ONTIME-TR1-Makerepayment1.xlsx|Input|Transactions|
  Then I "Make Pre Payment" and verified the following tabs
    |Scenario6-NABKISAN-ONTIME-TR1-Makeprepay.xlsx|Prepay Loan|Transactions|
    
    
@Scenario7-#407-NABKISAN-ONTIME-TR2
  Scenario: #407-NABKISAN-ONTIME-TR2

  Given I setup the clients
  When I entered the values into client from "Input" sheet
    |Createclient.xlsx|
  Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	|Scenario#407-NABKISAN-EARLY-TR2-Newcreateloan1.xlsx|
  Then I verified the "Summary" details successfully 
	|Scenario#407-NABKISAN-EARLY-TR2-Newcreateloan1.xlsx|
  And I verified the "Repayment Schedule" details successfully 
    |Scenario#407-NABKISAN-EARLY-TR2-Newcreateloan1.xlsx|
  Then I verified the "Transactions" details and read the transaction Id
	|Scenario#407-NABKISAN-EARLY-TR2-Newcreateloan1.xlsx|	
  Then I make repayment and verified the following tabs
    |Scenario#407-NABKISAN-EARLY-TR2-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
  And I disburse loan from "NewLoanInput" sheet
    |Scenario#407-NABKISAN-ONTIME-TR2-Newcreateloan2.xlsx|
  Then I verified the "Summary" details successfully 
	|Scenario#407-NABKISAN-ONTIME-TR2-Newcreateloan2.xlsx|
  And I verified the "Repayment Schedule" details successfully 
    |Scenario#407-NABKISAN-ONTIME-TR2-Newcreateloan2.xlsx|
  Then I verified the "Transactions" details and read the transaction Id
	|Scenario#407-NABKISAN-ONTIME-TR2-Newcreateloan2.xlsx|  
    