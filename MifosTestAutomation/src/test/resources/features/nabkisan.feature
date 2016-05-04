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
	|Scenario1-NABKISAN-EARLY-TR1-Newcreateloan1.xlsx|
  Then I verified the "Summary" details successfully 
	|Scenario1-NABKISAN-EARLY-TR1-Newcreateloan1.xlsx|
  And I verified the "Repayment Schedule" details successfully 
    |Scenario1-NABKISAN-EARLY-TR1-Newcreateloan1.xlsx|
  Then I verified the "Transactions" details and read the transaction Id
	|Scenario1-NABKISAN-EARLY-TR1-Newcreateloan1.xlsx|	
  Then I make repayment and verified the following tab
    |Scenario1-NABKISAN-EARLY-TR1-Makerepayment1.xlsx|Input|Summary|Repayment Schedule|Transactions|
   
