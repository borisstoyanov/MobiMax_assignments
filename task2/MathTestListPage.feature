Feature: Math Test List View

Objective: The user is given a list of his available tests. The list contains test details such as: Subject, Test, Prboblems, Completed. 
The page contains the user name, a home button and shut-down button. 

Scenario: User is able to see the thests
	Given the user is on Math Test Page
	Then he is able to see the tests that are avilable
	
Scenario: Chech that test details are displayed per test
	Given the user is on Math Test Page
	Then he should be able to see the test <test>
	And a property Subject is displayed
	And a property Test is displayed
	And a property Problems is displayed
	And a property Completed is displayed
	
	Examples: 
	|test|
	|test1|
	|test2|
	|test3...|
	
Scenario: When the user click on a test he should be displayed with the test questions
	Given the user is on Math Test Page
	And he clicks on a test: <testName>
	Then he should be displayed with the test questions 
	
	Examples:
	|testName|
	|testName1|
	|testName2|
	|testName3...|

Scenario: User can see his name displayed on the page
	Given the user is on Math Test Page
	Then he should be able to see his name displayed
	
Scenario: Home button leads to StudentsDashboardPage
	Given the user is on Math Test Page
	And he clicks on the home button
	Then he should be dipsplayed with the StudentsDashboardPage
	
Scenario: Shut-down button turns off the application
	Given the user is on Math Test Page
	And he clicks on the Shut-down button
	Then the application should quit
	