Feature: Inform client about Job Status

	In order to make sure that we have all required information in the beginning of the process so that it can run efficiently
	As a Staff Member
	I want to let the client know whether the required information is complete or not complete
	
	Scenario: Staff Member decides information is missing
		Given a client sent in a job
		  And the email address of the client is "markus@gmail.com"
		  And I am on the "Job details" page
		  And I filled in the comment field with "the audio is too bad"
		When I click on the button "Information missing"
		Then the email "Template 1" should be sent to "markus@gmail.com"
		  And the Template should cointain the text "the audio is too bad"
		  
		  
	Scenario: Staff Member decideds information is complete
		Given a client sent in a job
		  And the email address of the client is "markus@gmail.com"
		  And I am on the "Job details" page
		When I click on the button "Information complete"
		Then the email "Template 2" should be sent to "markus@gmail.com"