Feature: For doing calculation

  Scenario: Add two numbers
    Given the input "2+3"
    When the calculator is run
    Then the output should be "5"


  Scenario: Dividing two numbers
    * the input "3/2.0"
    * the calculator is run
    * the output should be "1.5"