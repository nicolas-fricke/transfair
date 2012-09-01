@wip
Feature: Client transcription submission
	In order submit a transcription job easily through the webapp
	As a client
	I want to be able to fill a webform
	
	Scenario: Best case
		Given I am on the "give-work" page
		  And I have filled required fields
		  And I have submitted my file (other feature)
		When I click the submit button
		Then the all the fields are created in the database
		  And a success message show up in the UI
		  
	Scenario: Best case
		Given I am on the "give-work" page
		  And I have filled required fields
		  And I have submitted my file (other feature)
		When I click the submit button
		Then the all the fields are created in the database
		  And a success message show up in the UI
	
	Given: I have filled the required fields
		Given I have filled "John" in the "name" field
		Given I have filled "blatovic@steinbeis-icrm.eu" in the "email" field
		Given I have filled "blatovic@steinbeis-icrm.eu" in the "email" confirmation field
		Given I have filled "english" in the "job language" field
		Given I have filled "01:03:15" in the "transcription informations duration" field
		Given I have filled "Lab" in the "transcription informations ending point" field
		Given I have filled "Excelent" in the "transcription informations audio quality" field
		Given I have filled "3" in the "transcription informations number of speaker" field
		Given I have filled "5" in the "transcription informations audio quality" field
		Given I have filled "4" in the "transcription informations speaker accent" field
		Given I have filled "1" in the "transcription information is content focused" field
		Given I have filled "read about it in a blog" in the "affiliation" field
