Feature:NABKISAN

Background:
	Given I navigate to mifos
	And I login into mifos site using "Login" excel sheet
		| Login.xlsx  |
		
	
@scenario31-Accurals
	  Scenario: Accurals

 Given I setup the clients 
 Then I entered the values into client from "Input" sheet
    |Createclient.xlsx|
 Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|	
 When I set up the new create loan from "NewLoanInput" sheet
	|Accurals-Newcreateloan.xlsx|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 Then I verified the "Summary" details successfully 
	|Accurals-Newcreateloan.xlsx|
  And I verified the "Repayment Schedule" details successfully 
    |Accurals-Newcreateloan.xlsx|
 And I verified the "Transactions" details successfully	
	|Accurals-Newcreateloan-Newcreateloan.xlsx|
 When I make repayment and verified the following tabs
    |Accurals-Makerepayment1.xlsx|Input|Transactions|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
    |Accurals-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|
