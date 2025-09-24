Feature: Dashboard and Data Display
  As a logged-in user,
  I want to view and filter my dashboard data,
  So that I can monitor my activity and access relevant information.

  Scenario: Dashboard Data Display
    Given the user is logged in
    When the user navigates to the dashboard page
    Then the dashboard should display the correct user-specific data including recent activity and summary statistics

  Scenario: Data Filtering on Dashboard
    Given the user is logged in and on the dashboard page
    When the user selects a filter option
    And clicks the "Apply Filter" button
    Then the dashboard should update to display data according to the selected filter criteria
