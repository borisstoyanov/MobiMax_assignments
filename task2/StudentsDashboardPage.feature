Feature: Students dashboard

Objective: Students dashboard shoudl be presented when the user logs in and it should contain all apps that are available to the student.
Student shoud be given a welcome message, also the MobiMax logo should be on the page and a shut down button should be displayed. 
User should be given a directory of "cool stuff", and he should be able to scroll down and browse around the dashboard

Scenario: User should be displayed wiht dashboard when he logs in.
	Given student is on login page
	And he login to the system 
	Then he should be displayed with the dashboard page
	
Scenario: User should be displayed wiht welcome message on dashboard.
	Given student is on Students dashboard page
	Then he should be displayed with a welcome message
	
Scenario Outline: User should be displayed wiht all apps available on dashboard.
	Given student is on Students dashboard page
	Then he should be displayed with a the following app available: <app>
	
	Examples:
    |app|
    |app1|
    |app2|
    |app3....|
	
Scenario: User should be displayed wiht the logo of mobiMax on dashboard.
	Given student is on Students dashboard page
	Then he should be displayed with a the logo of mobiMax	
	
Scenario: Application should shut-down when the shut-down button is pressed
	Given student is on Students dashboard page
	And he presses the shut-down button
	Then the application should shut-down
	
Scenario Outline: User is presented with a "Cool Stuff" directory
	Given student is on Students dashboard page
	Then he should be presented with a "Cool Stuff" directory
	And he enters the directory
	Then he should be displayed with a the following app available: <app>
		
	Examples:
    |app|
    |app1|
    |app2|
    |app3....|
	
Scenario: User should be able to scroll on dashboard
	Given student is on Students dashboard page
	Then he should be able to scroll the list of apps 
	

	
