Feature: User is able to login

  Scenario Outline: Login refused due to bad credentials
    Given The User is on the login page
    When The User enters <username> into the username field
    When The User enters <password> into the password field
    When The User clicks on the sign-in button
    Then An alert box should say <alert>
    When The User clicks the alert 'OK' button
    Then Then The title should be <title>

    Examples:
      | username | password | alert | title |
      | notauser | notapass | Please enter a valid username and password. | Login |

  Scenario Outline: Login to the employee reimbursement application
    Given The User is on the login page
    When The User enters <username> into the username field
    When The User enters <password> into the password field
    When The User clicks on the sign-in button
    Then The title should be <title>


    Examples:
      | username | password | title |
      | user | pass | Profile |
      | user1 | pass2| Profile |

  Scenario Outline: Create a new account
    Given The User is on the login page
    When The User clicks on the sign-up button
    Then The title should be <title>


    Examples:
      | title |
      | Sign Up |
