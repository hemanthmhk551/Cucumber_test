Feature: Personal Loan Calculator Page Functionality
  As a user,
  I want to use the Personal Loan Calculator,
  So that I can estimate my loan payments and understand my options.

  Scenario: Page loads successfully
    Given the user navigates to the Personal Loan Calculator page
    When the page loads
    Then the Personal Loan Calculator page should display all expected elements without errors

  Scenario: Entering a loan amount
    Given the user is on the Personal Loan Calculator page
    When the user enters a valid loan amount in the "Loan Amount" field
    Then the loan amount should be accepted and displayed in the input field

  Scenario: Entering an interest rate
    Given the user is on the Personal Loan Calculator page
    When the user enters a valid interest rate in the "Interest Rate" field
    Then the interest rate should be accepted and displayed in the input field

  Scenario: Entering a loan term
    Given the user is on the Personal Loan Calculator page
    When the user enters a valid loan term in the "Loan Term" field
    Then the loan term should be accepted and displayed in the input field

  Scenario: Performing a loan calculation
    Given the user has entered valid values for loan amount, interest rate, and loan term
    When the user clicks the "Calculate" button
    Then the monthly payment and total payment should be calculated and displayed

  Scenario: Displaying calculation results
    Given the user has performed a loan calculation
    When the result section is displayed
    Then the results should include accurate monthly payment, total payment, and total interest

  Scenario: Handling invalid inputs
    Given the user is on the Personal Loan Calculator page
    When the user enters invalid values for loan amount, interest rate, or loan term
    And clicks the "Calculate" button
    Then appropriate error messages should be shown for each invalid input

  Scenario: Resetting or clearing all fields
    Given the user has entered values in all input fields
    When the user clicks the "Reset" or "Clear" button
    Then all input fields should be cleared

  Scenario: Accessibility of calculator elements
    Given the user is on the Personal Loan Calculator page
    When the user navigates through input fields and buttons using the keyboard
    Then all elements should be accessible via keyboard and have proper descriptive labels

  Scenario: Responsiveness on different devices
    Given the user is on the Personal Loan Calculator page
    When the user opens the calculator on desktop, tablet, and mobile devices
    Then the calculator layout should adjust and function correctly on all device types

  Scenario: Displaying help or tooltips for input fields
    Given the user is on the Personal Loan Calculator page
    When the user hovers over or focuses on an input field
    Then help text or a tooltip should be displayed for that field

  Scenario: Handling edge case calculations
    Given the user is on the Personal Loan Calculator page
    When the user enters maximum allowed values in all input fields
    And clicks the "Calculate" button
    Then the calculator should process the edge case values and display correct results or error messages

  Scenario: Navigating using page links
    Given the user is on the Personal Loan Calculator page
    When the user clicks on a navigation link (such as Home or Blog)
    Then the user should be redirected to the correct page

  Scenario: Data is not retained after reset or refresh
    Given the user has entered values in the input fields
    When the user clicks the "Reset" button or refreshes the page
    Then all fields should be cleared and no previous data should be retained
