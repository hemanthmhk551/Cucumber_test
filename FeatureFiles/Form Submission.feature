Feature: Form Submission
  As a user,
  I want to submit forms with required information,
  So that my data is processed correctly.

  Scenario: Form Submission with Required Fields
    Given the user is logged in and on the form page
    When the user fills in all required fields with valid data
    And clicks the "Submit" button
    Then the form should be submitted successfully
    And a success message should be displayed

  Scenario: Form Submission with Missing Required Fields
    Given the user is logged in and on the form page
    When the user leaves one or more required fields empty
    And clicks the "Submit" button
    Then an error message should be displayed indicating which required fields are missing
    And the form should not be submitted
