@wip
Feature: Inform client: No service Partner Available (Template 3A/B)

	In order to increase customer satifaction and to manage the expectations of the client
	As a Staff Member
	I want to let the client know that we don't have available service partners for his job at this point in time
	
	Scenario: No Service Partner Available (enough time)
		Given a client sent in the job "Transcription of the Hawaii interview"
		  And the email address of the client is "markus@gmail.com"
		  And I am on the "Job details" page
		When I click on the button "No service partner available - enough time"
		Then the email "Template 3A" should be sent to "markus@gmail.com"
		
	Scenario: No Service Partner Available (tight deadline)
		Given a client sent in the job "Transcription of the Hawaii interview"
		  And the email address of the client is "markus@gmail.com"
		  And I am on the "Job details" page
		When I click on the button "No service partner available - tight deadline"
		Then the email "Template 3B" should be sent to "markus@gmail.com"