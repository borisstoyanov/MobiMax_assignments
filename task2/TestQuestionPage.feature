Feature: Test Questions Page

Objective: This feature contains a page where a test question is displayed. It usually has a TestQuestion, Answers, CompletionIndicator, NextButton. 
Also the page header contains type of test, students name, homePage button, options button and a shut-down button.



Scenario: TestQuestion should be displayed
	Given the user is on TestQuestionsPage
	User should be able to see the TestQuestion
	
Scenario: User should be able to play the TestQuestion 
	Given the user is on TestQuestionsPage
	And he clicks on the Listen button 
	Then the user should be able to hear the TestQuestion	

Scenario: User should be able to select an answer
	Given the user is on TestQuestionsPage
	And he clicks on an answer 
	Then the answer should be selected 
	And when he clicks Next
	Then the answer should be submitted
	And the next question should be present
	
Scenario: User should be able to select an answer
	Given the user is on TestQuestionsPage
	And if he is presented with an option to hear the answers 
	Then he should be able to click on the Listen button 
	And he should be able to hear the answer
	And when he clicks Next
	Then the answer should be submitted
	And the next question should be present
	
Scenario: User should be able to submit multiple answers
	Given the user is on TestQuestionsPage
	And if he is presented with an option to submit multiple answers
	Then he should be able to select an answer: "" and answer: ""

Scenario: Test completion indicator shows the test progress
	Given the user is on TestQuestionsPage
	And he clicks on an answer 
	And when he clicks Next
	Then the answer should be submitted
	And the next question should be present 
	And the CompletionIndicator should be showing the test progress
	
Scenario: Click Next with not Selected answer should not be possible
	Given the user is on TestQuestionsPage
	And when he clicks Next
	Then the user should be displayed with a message to select an answer.
	
Scenario: When test is completed user should be displayed with proper message
	Given the user is on TestQuestionsPage
	And the user completed all the tests
	Then the application should displaye a message that the test is done. 
	And when he clicks Next
	Then User should be dipsplayed with Test List View Page
	And if no test are assigned there should be no tests dipsplayed.
	
Scenario: User can see his name displayed on the page
	Given the user is on TestQuestionsPage
	Then he should be able to see his name displayed
	
Scenario: User should be able to see the type of test
	Given the user is on TestQuestionsPage
	Then he should be able to see the type of test
	
Scenario: Home button leads to StudentsDashboardPage
	Given the user is on TestQuestionsPage
	And he clicks on the home button
	Then he should be dipsplayed with the StudentsDashboardPage
	
Scenario: Shut-down button turns off the application
	Given the user is on TestQuestionsPage
	And he clicks on the Shut-down button
	Then the application should quit
	
Scenario: User should be able to scroll down the answers
	Given the user is on TestQuestionsPage
	Then the user should be able to scroll the answers
	