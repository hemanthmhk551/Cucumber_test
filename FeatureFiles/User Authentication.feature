Feature: User Authentication
  As a registered user,
  I want to securely log in and out of the application,
  So that I can access my personal dashboard and protect my account.

  Scenario: User Login with Valid Credentials
    Given the user is registered and on the login page
    When the user enters a valid username and password
    And clicks the "Login" button
    Then the user should be redirected to the dashboard page

  Scenario: User Login with Invalid Credentials
    Given the user is registered and on the login page
    When the user enters an invalid username or password
    And clicks the "Login" button
    Then an error message should be displayed indicating invalid credentials
    And the user should remain on the login page

  Scenario: Password Reset Request
    Given the user is registered and on the login page
    When the user clicks the "Forgot Password?" link
    And enters the registered email address
    And clicks the "Submit" button
    Then a confirmation message should be displayed indicating that a password reset email has been sent

  Scenario: Logout Functionality
    Given the user is logged in and on the dashboard
    When the user clicks the "Logout" button
    Then the user should be logged out
    And redirected to the login page
