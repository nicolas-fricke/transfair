@wip
Feature: Offering job to client (Template 4)

	In order to have a suitable Service Partner choose the job
	As a Staff Member
	I want to offer the job to serveral Service Partners
	
	Scenario: Job is offered to various Service Partners
		Given that Markus, Michael and Klaus are suitable and available service partners
		  And the email adress of Markus is "markus@yahoo.de", the email address of Klaus is "Klaus@gmail.com" and the email address of Michael is "Michael@grumme.org"
		  And I am on the "Job details" page
		When I click on the button "Offer job"
		  And I pick Markus, Michael and Klaus from the list
		Then the email "Template 4" should be sent to "markus@yahoo.de", "Klaus@gmail.com" and "Michael@grumme.org".