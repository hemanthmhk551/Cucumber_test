Feature: Profile Management
  As a user,
  I want to update my profile details,
  So that my information remains accurate.

  Scenario: Profile Update
    Given the user is logged in and on the profile page
    When the user edits profile details
    And clicks the "Save" button
    Then the profile details should be updated successfully
    And a confirmation message should be displayed
