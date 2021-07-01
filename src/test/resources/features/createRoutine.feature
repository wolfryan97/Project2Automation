Feature: User is able to create a routine

  Scenario Outline: Login and access the create routine page
    Given The User is on the login page
    When The User enters <username> into the username field
    When The User enters <password> into the password field
    When The User clicks on the sign-in button
    Then The greeting should say <greeting>
    When The User clicks on the new routine button
    Then The title should be <title>
    Examples:
      | username | password | greeting | title |
      | "jtest" | "pass" | "Welcome Johnny Test" | "Create Routine" |

  Scenario Outline: The User starts to create a routine
    Given The User is on the dashboard page
    When The User enters <name> into the routine name field
    When The User enters <description> into the description field
    Examples:
      | name | description |
      | "Monday morning routine" | "Morning routine - 8am" |

  Scenario Outline: Attempt to create exercises for the new routine
    When The User selects the exercise filter <type>
    When The User selects an exercise <exercise>
    When The User clicks on the add button
    Examples:
      | type | exercise |
      | "Cardio" | "Squats" |
      | "Cardio" | "Bike"    |
      | "Strength" | "Benchpress" |


  Scenario Outline: User fails to create a blank exercise
    When The User selects an exercise <exercise>
    Then The title should be <title>
    Then An alert should say <alert>
    Examples:
      | exercise | title | alert |
      | ""       | "Create Routine" | "Error... Please enter a value for the exercise name" |

  Scenario Outline: User creates the new routine
    When The User clicks on the create button
    Then The title should be <title>
    Then An alert should say <alert>
    Examples:
      | title | alert |
      | "Create Routine" | "Routine successfully created" |

  Scenario Outline: User fails to create an empty routine
    Given The User is on the dashboard page
    When The User enters <name> into the routine name field
    When The User enters <description> into the description field
    When The User clicks on the create button
    Then The title should be <title>
    Then An alert should say <alert>
    Examples:
      | name | description | title | alert |
      | "I'm gettin' ripped tonight" | "Fail Test" | "Create Routine" | "Error... Please enter a value for the exercise name" |


  Scenario Outline: User able to go home
    Given The User is on the create routine page
    When The User clicks the home button
    Then The title should be <title>
    Examples:
      | title |
      | "Dashboard" |


  Scenario Outline: User is able to logout
    Given The User is on the create routine page
    When The User clicks on the logout button
    Then The title should be <title>
    Examples:
      | title |
      | "Login" |
