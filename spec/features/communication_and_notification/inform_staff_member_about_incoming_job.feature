@wip
Feature: Inform Staff member about incoming job (Template 21)

	In order to process a Job quickly
	As a Staff Member
	I want to be informed when a new Job is submitted
	
	Scenario:
		When a client submitts a job
		Then the email "Template 21" should be sent to "jobalert@transfair.co"