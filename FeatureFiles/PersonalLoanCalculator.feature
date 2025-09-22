Feature: Personal Loan Calculator Functionality
  As a user,
  I want to use the personal loan calculator,
  So that I can estimate my loan payments accurately and efficiently.

  Scenario: Loan calculator page loads successfully
    Given the user has internet access
    When the user navigates to the personal loan calculator page
    Then the loan calculator interface should be displayed

  Scenario: Required input fields are present
    Given the loan calculator page is loaded
    When the user views the loan calculator form
    Then the "Loan Amount" input field should be visible and enabled
    And the "Interest Rate" input field should be visible and enabled
    And the "Loan Term" input field should be visible and enabled

  Scenario: Loan Amount field validation
    Given the loan calculator page is loaded
    When the user enters invalid input such as alphabets, special characters, or negative numbers in the "Loan Amount" field
    Then the field should reject the invalid input
    When the user enters a valid positive number in the "Loan Amount" field
    Then the field should accept the input

  Scenario: Interest Rate field validation
    Given the loan calculator page is loaded
    When the user enters invalid input such as alphabets, special characters, or negative numbers in the "Interest Rate" field
    Then the field should reject the invalid input
    When the user enters a valid positive number in the "Interest Rate" field
    Then the field should accept the input

  Scenario: Loan Term field validation
    Given the loan calculator page is loaded
    When the user enters invalid input such as alphabets, special characters, or negative numbers in the "Loan Term" field
    Then the field should reject the invalid input
    When the user enters a valid positive number in the "Loan Term" field
    Then the field should accept the input

  Scenario: Calculator computes monthly payment accurately
    Given valid values are entered in all fields
    When the user enters a loan amount of $10,000
    And enters an interest rate of 5%
    And enters a loan term of 5 years
    And clicks the "Calculate" button
    Then the monthly payment should be calculated and displayed accurately

  Scenario: Reset or clear functionality
    Given the loan calculator page is loaded
    When the user enters values in all fields
    And clicks the "Reset" or "Clear" button
    Then all fields should be cleared and reset to their default state

  Scenario: Error messages for empty required fields
    Given the loan calculator page is loaded
    When the user leaves one or more required fields empty
    And clicks the "Calculate" button
    Then a relevant error message should be displayed for each empty field

  Scenario: Help or tooltip for input fields
    Given the loan calculator page is loaded
    When the user hovers over or clicks on the help icon or tooltip for each input field
    Then a tooltip or help text should be displayed explaining the field

  Scenario: Accessibility features for calculator
    Given the loan calculator page is loaded
    When the user navigates through the fields using the keyboard
    And uses a screen reader to read field labels and values
    Then the calculator should be usable and accessible

  Scenario: Calculation with edge values
    Given the loan calculator page is loaded
    When the user enters a very high loan amount such as $1,000,000
    And enters a very low interest rate such as 0.1%
    And enters a long loan term such as 30 years
    And clicks the "Calculate" button
    Then the calculator should compute and display results without errors

  Scenario: Data reset after navigating away and returning
    Given the loan calculator page is loaded
    When the user enters values in the fields
    And navigates away from the page
    And returns to the calculator page
    Then all fields should be reset and no previous data should be retained

  Scenario: Print functionality for results
    Given the results are displayed
    When the user clicks the "Print" button
    Then the print dialog should open and the results should be formatted for printing

  Scenario: Sharing functionality for results
    Given the results are displayed
    When the user clicks the "Share" button
    And selects a sharing method
    Then the results should be shared via the selected method
