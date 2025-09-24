Feature: Access Control
  As an unauthorized user,
  I want to be prevented from accessing protected pages,
  So that sensitive information is secure.

  Scenario: Access Control for Unauthorized Users
    Given the user is not logged in
    When the user attempts to access a protected page
    Then the user should be redirected to the login page
    And a message should be displayed indicating that authentication is required
