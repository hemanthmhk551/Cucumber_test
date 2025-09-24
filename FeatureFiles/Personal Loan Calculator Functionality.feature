Feature: Personal Loan Calculator Functionality
  As a user,
  I want to use the Personal Loan Calculator,
  So that I can estimate my monthly loan payments accurately and efficiently.

  Scenario: Page loads successfully
    Given the user has internet access
    When the user navigates to "https://www.experian.com/blogs/ask-experian/personal-loan-calculator/"
    Then the Personal Loan Calculator page should load without errors
    And all UI elements should be visible

  Scenario: Required input fields are present
    Given the Personal Loan Calculator page is loaded
    When the user views the calculator form
    Then the Loan Amount, Interest Rate, Loan Term, and other relevant fields should be present and visible

  Scenario: Entering a valid loan amount
    Given the Personal Loan Calculator page is loaded
    When the user enters a valid loan amount in the Loan Amount field
    Then the Loan Amount field should accept the input without error

  Scenario: Entering an invalid loan amount
    Given the Personal Loan Calculator page is loaded
    When the user enters an invalid loan amount in the Loan Amount field
    Then an error message should be displayed
    And the input should not be accepted

  Scenario: Entering a valid interest rate
    Given the Personal Loan Calculator page is loaded
    When the user enters a valid interest rate in the Interest Rate field
    Then the Interest Rate field should accept the input without error

  Scenario: Entering an invalid interest rate
    Given the Personal Loan Calculator page is loaded
    When the user enters an invalid interest rate in the Interest Rate field
    Then an error message should be displayed
    And the input should not be accepted

  Scenario: Entering a valid loan term
    Given the Personal Loan Calculator page is loaded
    When the user enters a valid loan term in the Loan Term field
    Then the Loan Term field should accept the input without error

  Scenario: Entering an invalid loan term
    Given the Personal Loan Calculator page is loaded
    When the user enters an invalid loan term in the Loan Term field
    Then an error message should be displayed
    And the input should not be accepted

  Scenario: Calculating monthly payment with valid inputs
    Given all required input fields have valid values
    When the user clicks the 'Calculate' button
    Then the monthly payment should be calculated and displayed accurately

  Scenario: Handling missing required inputs
    Given the Personal Loan Calculator page is loaded
    When the user leaves one or more required fields empty
    And clicks the 'Calculate' button
    Then an error message should be displayed
    And the calculation should not be performed

  Scenario: Resetting the calculator
    Given the calculator has values entered in the input fields
    When the user clicks the 'Reset' button
    Then all input fields should be cleared and reset to default values

  Scenario: UI elements are displayed correctly
    Given the Personal Loan Calculator page is loaded
    When the user views the calculator interface
    Then all UI elements should be properly aligned and labeled

  Scenario: Accessibility compliance
    Given the Personal Loan Calculator page is loaded
    When the user navigates using the keyboard or a screen reader
    Then all elements should be accessible and labeled for assistive technologies

  Scenario: Calculating with edge values
    Given the Personal Loan Calculator page is loaded
    When the user enters edge values in the input fields
    And clicks the 'Calculate' button
    Then the calculator should process edge values correctly
    And display results or errors as appropriate

  Scenario: Result formatting
    Given a calculation has been performed
    When the user observes the displayed results
    Then the results should be formatted correctly (e.g., $1,234.56)

  Scenario: Help and tooltip functionality
    Given the Personal Loan Calculator page is loaded
    When the user hovers over or clicks on help/tooltips for input fields
    Then help or tooltips should be displayed with relevant information

  Scenario: Mobile responsiveness
    Given a mobile device is available
    When the user opens the calculator page on a mobile device
    And interacts with input fields and buttons
    Then the calculator should be usable and display correctly on mobile devices

  Scenario: Error message clarity
    Given an input error is triggered
    When the user enters invalid data and triggers an error
    Then error messages should clearly describe the issue and how to resolve it
