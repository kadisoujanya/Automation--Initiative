Feature:CHAITANYA

Background:
	Given I navigate to mifos
	And I login into mifos site using "Login" excel sheet
		| Login.xlsx  |
	Then I should see logged in successfully
	
@Scenario1-CHAITANYA-Undodisbursal-TR2
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
	
	 
	 
	@Scenario2-CHAITANYA-ONTIME-TR1
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
 	
 	
 	
 	@Scenario7-CHAITANYA-LATE-TR2
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
 
 
 
# 	@Scenario8-RBI-TR-1-ONTIME-DISBURSE-Regular-PERIODIC-Newcreateloan
#      Scenario: Scenario8-RBI-TR-1-ONTIME-DISBURSE-Regular-PERIODIC-Newcreateloan
# Given I setup the product loan "Setup"
#    | Productloannavigation.xlsx |
# Then I entered the values into product loan from "ProductLoanInput" Sheet
#    |Scenario7-RBI-TR-1-ONTIME-DISBURSE-Regular-PERIODIC-Loanproduct.xlsx|       
# Given I setup the clients
# Then I entered the values into client from "Input" sheet
#    |Createclient.xlsx|
# Then I should see client created successfully from "Output" sheet
#    |Createclient.xlsx|   
# When I set up the new create loan from "NewLoanInput" sheet
#    |Scenario8-RBI-TR-1-ONTIME-DISBURSE-Regular-PERIODIC-Newcreateloan.xlsx|
# Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
# Then I verified the "Summary" details successfully
#   |Scenario8-RBI-TR-1-ONTIME-DISBURSE-Regular-PERIODIC-Newcreateloan.xlsx|
# And I verified the "Repayment Schedule" details successfully
#    |Scenario8-RBI-TR-1-ONTIME-DISBURSE-Regular-PERIODIC-Newcreateloan.xlsx|
#  Then I make repayment and verified the following tabs
#    |Scenario6-Chaithanyaprod-TR2-EARLY-Makerepayment2.xlsx|Input|Summary|Repayment Schedule|Transactions|	
 
# Then I verified the "Transactions" details and read the transaction Id
#    |Scenario8-RBI-TR-1-ONTIME-DISBURSE-Regular-PERIODIC-Newcreateloan.xlsx|
# And I Navigate to Accounting web page
# And I search with transaction id & verified the accounting entries
#    |Scenario8-RBI-TR-1-ONTIME-DISBURSE-Regular-PERIODIC-Makerepayment1.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|
 	
 	


@Scenario9-Chaithanyaprod-change-disb-date-during-approval-TR2-EARLY
  Scenario: Chaithanyaprod-change-disb-date-during-approval-TR2-EARLY

  Given I setup the clients
  When I entered the values into client from "Input" sheet
    |Createclient.xlsx|
  Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	|Scenario9-Chaithanyaprod-change-disb-date-during-approval-TR2-EARLY-Newcreateloan1.xlsx|
  Then I verified the "Summary" details successfully 
	|Scenario9-Chaithanyaprod-change-disb-date-during-approval-TR2-EARLY-Newcreateloan1.xlsx|
  And I verified the "Repayment Schedule" details successfully 
    |Scenario9-Chaithanyaprod-change-disb-date-during-approval-TR2-EARLY-Newcreateloan1.xlsx|
  Then I verified the "Transactions" details and read the transaction Id
	|Scenario9-Chaithanyaprod-change-disb-date-during-approval-TR2-EARLY-Newcreateloan1.xlsx|	
  Then I make repayment and verified the following tabs
    |Scenario9-Chaithanyaprod-change-disb-date-during-approval-TR2-EARLY-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|	
   And I disburse loan from "NewLoanInput" sheet
    |Scenario9-Chaithanyaprod-change-disb-date-during-approval-TR2-EARLY-Newcreateloan2.xlsx|
  Then I verified the "Summary" details successfully 
	|Scenario9-Chaithanyaprod-change-disb-date-during-approval-TR2-EARLY-Newcreateloan2.xlsx|
  And I verified the "Repayment Schedule" details successfully 
    |Scenario9-Chaithanyaprod-change-disb-date-during-approval-TR2-EARLY-Newcreateloan2.xlsx|
  Then I verified the "Transactions" details and read the transaction Id
	|Scenario9-Chaithanyaprod-change-disb-date-during-approval-TR2-EARLY-Newcreateloan2.xlsx|	
  Then I make repayment and verified the following tabs
    |Scenario9-Chaithanyaprod-change-disb-date-during-approval-TR2-EARLY-Makerepayment2.xlsx|Input|Summary|Repayment Schedule|Transactions|	
 
  
  
  
  @Scenario13-CHAITANYA-Duringdisb-chansgeinstallamt-ONTIME-TR1
   Scenario: CHAITANYA-Duringdisb-chansgeinstallamt-ONTIME-TR1

  Given I setup the clients
  When I entered the values into client from "Input" sheet
    |Createclient.xlsx|
  Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	|Scenario13-Chaithanyaprod-During disb-chansge install amt-ONTIME-TR1-Newcreateloan.xlsx|
  Then I verified the "Summary" details successfully 
	|Scenario13-Chaithanyaprod-During disb-chansge install amt-ONTIME-TR1-Newcreateloan.xlsx|
  And I verified the "Repayment Schedule" details successfully 
    |Scenario13-Chaithanyaprod-During disb-chansge install amt-ONTIME-TR1-Newcreateloan.xlsx|
  Then I verified the "Transactions" details and read the transaction Id
	|Scenario13-Chaithanyaprod-During disb-chansge install amt-ONTIME-TR1-Newcreateloan.xlsx|	
  Then I make repayment and verified the following tabs
    |Scenario13-Chaithanyaprod-During disb-chansge install amt-ONTIME-TR1-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|	
 
 
 
 
  @Scenario14-Chaithanyaprod-TrancheReversal-TR2
 	Scenario: Chaithanyaprod-TrancheReversal-TR2

  Given I setup the clients
  When I entered the values into client from "Input" sheet
    |Createclient.xlsx|
  Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	|Scenario14-Chaithanyaprod-TrancheReversal-TR2-Newcreateloan1.xlsx|
 Then I verified the "Summary" details successfully 
	|Scenario14-Chaithanyaprod-TrancheReversal-TR2-Newcreateloan1.xlsx|
  And I verified the "Repayment Schedule" details successfully 
    |Scenario14-Chaithanyaprod-TrancheReversal-TR2-Newcreateloan1.xlsx|
  Then I verified the "Transactions" details and read the transaction Id
	|Scenario14-Chaithanyaprod-TrancheReversal-TR2-Newcreateloan1.xlsx|	
  Then I make repayment and verified the following tabs
    |Scenario14-Chaithanyaprod-TrancheReversal-TR2-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|	
   And I disburse loan from "NewLoanInput" sheet
    |Scenario14-Chaithanyaprod-TrancheReversal-TR2-Newcreateloan2.xlsx|
  Then I verified the "Summary" details successfully 
	|Scenario14-Chaithanyaprod-TrancheReversal-TR2-Newcreateloan2.xlsx|
 And I verified the "Repayment Schedule" details successfully 
   |Scenario14-Chaithanyaprod-TrancheReversal-TR2-Newcreateloan2.xlsx|
 Then I verified the "Transactions" details and read the transaction Id
	|Scenario14-Chaithanyaprod-TrancheReversal-TR2-Newcreateloan2.xlsx|	
  Then I make repayment and verified the following tabs
    |Scenario14-Chaithanyaprod-TrancheReversal-TR2-Makerepayment2.xlsx|Input|Summary|Repayment Schedule|Transactions|
  Then I "Undo transaction from transaction tab" and verified the following tabs
  |Scenario14-Chaithanyaprod-TrancheReversal-TR2-Make2RepaymentThenDeleteTransaction-Makerepayment2.xlsx|Modify Transaction|
  Then I verified the "Summary" details successfully 
   |Scenario14-Chaithanyaprod-TrancheReversal-TR2-Make2RepaymentThenDeleteTransaction-Makerepayment2.xlsx|
  And I verified the "Repayment Schedule" details successfully 
    |Scenario14-Chaithanyaprod-TrancheReversal-TR2-Make2RepaymentThenDeleteTransaction-Makerepayment2.xlsx|
  Then I verified the "Transactions" details and read the transaction Id
	|Scenario14-Chaithanyaprod-TrancheReversal-TR2-Make2RepaymentThenDeleteTransaction-Makerepayment2.xlsx|
	
	

  @Scenario16-Chaithanyaprod-EditTransaction-TR1
   Scenario: Chaithanyaprod-EditTransaction-TR1

  Given I setup the clients
  When I entered the values into client from "Input" sheet
    |Createclient.xlsx|
  Then I should see client created successfully from "Output" sheet
	|Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	|Scenario16-Chaithanyaprod-EditTransaction-TR1-Newcreateloan.xlsx|
  Then I verified the "Summary" details successfully 
	|Scenario16-Chaithanyaprod-EditTransaction-TR1-Newcreateloan.xlsx|
  And I verified the "Repayment Schedule" details successfully 
    |Scenario16-Chaithanyaprod-EditTransaction-TR1-Newcreateloan.xlsx|
  Then I verified the "Transactions" details and read the transaction Id
	|Scenario16-Chaithanyaprod-EditTransaction-TR1-Newcreateloan.xlsx|	
  Then I make repayment and verified the following tabs
    |Scenario16-Chaithanyaprod-EditTransaction-TR1-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|	
  Then I "edit transaction from transaction tab" and verified the following tabs
    |Scenario16-Chaithanyaprod-TR1-Make1RepaymentThenEditTransaction-Makerepayment1.xlsx|Modify Transaction|
  Then I verified the "Summary" details successfully 
    |Scenario16-Chaithanyaprod-TR1-Make1RepaymentThenEditTransaction-Makerepayment1.xlsx|
  And I verified the "Repayment Schedule" details successfully 
    |Scenario16-Chaithanyaprod-TR1-Make1RepaymentThenEditTransaction-Makerepayment1.xlsx|
  Then I verified the "Transactions" details and read the transaction Id
	|Scenario16-Chaithanyaprod-TR1-Make1RepaymentThenEditTransaction-Makerepayment1.xlsx|
  
 

	
	
	