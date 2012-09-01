Feature: File upload for clients from filesystem
	In order to attach file to my job conviniently
	As a client
	I want to upload a file from my filesystem 
	
	Scenario: Best case scenario
		Given I am on the "give-work" page
		  And The job has the ID 25
		  And I have filled in the required fields
		  And I have selected "myfile.mp3"
		
		When I submit the form
		
		Then the file "jobs/25/1.myfile.mp3" should be stored on dropbox
		 And the Job should have 1 File
		 And this File should have the url similar to "https://www.dropbox.com/<some_random_string>/1.myfile.mp3"
		
		