Feature: Personal Loan Calculator Functionality
  As a prospective borrower,
  I want to use the personal loan calculator,
  So that I can estimate my loan payments and understand my options.

  Scenario: Calculator page loads successfully
    Given the user has an active internet connection
    When the user navigates to the personal loan calculator page
    Then the calculator page should load with all main UI elements visible
    And no errors should be displayed

  Scenario: Loan amount input field accepts valid values
    Given the calculator page is loaded
    When the user enters a valid amount (e.g., 10000) in the "Loan Amount" input field
    Then the amount should be accepted and displayed correctly in the input field

  Scenario: Loan amount input field rejects negative values
    Given the calculator page is loaded
    When the user enters a negative value (e.g., -5000) in the "Loan Amount" input field
    Then an error message should be displayed or the value should not be accepted

  Scenario: Loan amount input field rejects non-numeric values
    Given the calculator page is loaded
    When the user enters non-numeric characters (e.g., "abc") in the "Loan Amount" input field
    Then an error message should be displayed or the value should not be accepted

  Scenario: Interest rate input field accepts valid values
    Given the calculator page is loaded
    When the user enters a valid rate (e.g., 5) in the "Interest Rate" input field
    Then the rate should be accepted and displayed correctly in the input field

  Scenario: Interest rate input field rejects out-of-range values
    Given the calculator page is loaded
    When the user enters an extremely high value (e.g., 100) in the "Interest Rate" input field
    Then an error message should be displayed or the value should not be accepted

  Scenario: Loan term input field accepts valid values
    Given the calculator page is loaded
    When the user enters a valid term (e.g., 36 months) in the "Loan Term" input field
    Then the term should be accepted and displayed correctly in the input field

  Scenario: Loan term input field rejects non-numeric values
    Given the calculator page is loaded
    When the user enters non-numeric characters in the "Loan Term" input field
    Then an error message should be displayed or the value should not be accepted

  Scenario: Calculate monthly payment with valid inputs
    Given valid values are entered for loan amount, interest rate, and term
    When the user clicks the "Calculate" button
    Then the monthly payment should be calculated and displayed accurately

  Scenario: Display total interest paid
    Given valid values are entered for all fields
    When the user clicks the "Calculate" button
    Then the total interest paid should be displayed correctly

  Scenario: Display total payment (principal + interest)
    Given valid values are entered for all fields
    When the user clicks the "Calculate" button
    Then the total payment should be displayed correctly

  Scenario: Reset calculator fields
    Given values are entered in all input fields
    When the user clicks the "Reset" or "Clear" button
    Then all input fields should be cleared and reset to default values

  Scenario: Prevent calculation with missing required fields
    Given the calculator page is loaded
    When the user leaves one or more required fields blank and attempts to calculate
    Then an error message should be displayed
    And the calculation should not proceed

  Scenario: Input fields display appropriate placeholder text
    Given the calculator page is loaded
    When the user observes the placeholder text in each input field
    Then placeholders should be present and provide clear guidance (e.g., "Enter loan amount")

  Scenario: Calculator UI is responsive on different devices
    Given the user has access to desktop, tablet, and mobile devices
    When the user opens the calculator page on each device
    Then the calculator should display correctly and be usable on all devices

  Scenario: Calculator is accessible via keyboard navigation
    Given the calculator page is loaded
    When the user uses Tab or Shift+Tab to navigate through input fields and buttons
    Then all fields and buttons should be accessible via keyboard navigation

  Scenario: Calculator is accessible to screen readers
    Given a screen reader is available
    When the user enables the screen reader and navigates through the calculator
    Then all fields and buttons should be announced clearly by the screen reader

  Scenario: Error messages are clear and informative
    Given invalid data is entered in any field
    When the user attempts to calculate
    Then error messages should be displayed clearly, indicating the specific issue

  Scenario: Monetary values are displayed in correct currency format
    Given the calculator page is loaded
    When the user enters a valid loan amount and calculates
    Then all monetary values should be displayed in correct currency format (e.g., $10,000.00)

  Scenario: Help or info tooltips are available and accurate
    Given the calculator page is loaded
    When the user hovers over or clicks on help or info icons
    Then tooltips should display helpful and accurate information
