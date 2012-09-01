@wip
Feature Email notification after sign up
	In order be sure the that I signed up successfully
	As a user
	I want to recieve a confirmation email after signing up
	
	Scenario: Best case
		Given I am on the "sign up" page
		  And I have filled the required fields
		When I submit the form
		Then the sign up confirmation template should be sent to the email provided
		
	Scenario: Doesn't provide required fields
		Given I am on the "sign up" page
		  And 1 or more field(s) is not filled
		When I submit the form
		Then I recieve an alert message inviting me to fill the fields
		
	Scenario: Provide an invalid email adress
		Given I am on the "sign up" page
		  And I provided an invalid email adress
		When I submit the form
		Then I recieve an alert message inviting me to correct my email adress
	
	Given: I have filled the required fields
		Given I have filled "John" in the name field
		Given I have filled "Tester" in the surname field
		Given I have filled "john@tester.com" in the email field
		Given I have filled "015784678912" in the phone number field
		Given I have filled "Switzerland" in the country field