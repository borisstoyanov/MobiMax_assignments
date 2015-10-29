Feature: MobiMax registration page

  Scenario: User Registers as a Teacher
    Given the user is at the registration page
    And he enters firstname:"Math"
    And he enters lastname:"Teacher"
    And he enters ZIP:"15205"
    And he selects school:"Crafton El Sch "
    And he enters username:"math.teacher@thebestmathschooleverexisting.com"
    And he enters password:"supersecret"
    And he clicks "Register Free"
    Then he should be displayed with the mobimax welcome page

  Scenario: Verify teacher settings data
    Given the teacher is logged in the application
    And he goes to settings
    Then the first name should be:"math.teacher@thebestmathschooleverexisting.com"
    And the last name should be:"supersecret"
