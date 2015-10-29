Feature: Login Page
Objective: This feature represents a login page on which the user can login to the system. 
It has a type of login, username and password fields, hide my typing check-box and a submit button. 

Scenario: User is able to login.
	Given the user is on login page
	And he enters username: ""
	And he enters password: ""
	Then the user should login in the system 
	And he should be displayed with Student dashboard
	
Scenario: User is unable to login with incorrect credentials.
	Given the user is on login page
	And he enters username: ""
	And he enters password: "(incorrect)"
	Then the user should not login in the system 

Scenario: User is unable to login with incorrect type of login.
	Given the user is on login page
	And he selects to sign in with: "(different-than-student)"
	And he enters username: ""
	And he enters password: ""
	Then the user should not login in the system 
	
Scenario: User typing should be hidden when "Hide my typing" is selected.
	Given the user is on login page
	And he selects "Hide my typing"
	And he enters username: ""
	And he enters password: ""
	Then the user should not be able to see the input that he has entered 