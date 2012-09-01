@wip
Feature: Inform client that we cannot complete the job (Template 3C)

	In order to minimize damage and maintain a good customer relationship	
	As a Staff Member
	I want to let the client know that we are sorry that we could not complete his job request.
	
	Scenario: We can't complete the job due to a lack of service partners
		Given that we don't have Service Partners available to serve the clients job request
		  And the email address of the client is "markus@gmail.com"
		  And I am on the "Job details" page
		When I click on the button "We can't serve your request"
		Then the email "Template 3C" should be sent to "markus@gmail.com"