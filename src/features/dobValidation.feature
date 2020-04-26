Feature: Date of Birth validation on New Entry page
  As a user of the application
  I want to have good validation on my new entries
  So that I can be sure my DoB data is good

#  TODO: Update yob to dob once the but is fixed
  Background:
    Given I open the site "/"

  Scenario Outline: Date information is validated in-page
    And I click on the element "input[name='yob']"
    And I enter the text "<input>"
    And I click on the element "h2"
    Then I expect that element "input[name='yob']" contains the text "<output>"
    Examples:
      | input    | output     |
      | 11111111 | 1111-11-11 |
      | 22222222 | 2222-02-22 |
      | 3333333  | 3333-03-31 |
      | 00000000 | 0001-01-01 |
      | 999      | 0009-09-09 |
      | 29022020 | 2020-02-29 |


  Scenario Outline: Non-existent Dates are invalidated in-page
    And I click on the element "input[name='yob']"
    And I enter the text "<input>"
    And I click on the element "h2"
    Then I expect that element "input[name='yob']" contains an empty string
    Examples:
      | input    |
      | 31092012 |
      | 29022021 |

  Scenario Outline: Non-existent Dates are not submitted to the API
    When I set "Some Person" to the inputfield "#fullName"
    And I set "Bosnia" to the inputfield "#country"
    And I click on the element "input[name='yob']"
    And I enter the text "<input>"
    And I set "Senator" to the inputfield "#position"
    And I set "http://thing.com" to the inputfield "#url"
    And I select the 1st option for element "select#risk"
    And I click on the button "form.form button"
    Then I wait on element ".modal-content" to be displayed
    Then I expect that element ".modal-body" not contains the text "You added"
    Examples:
      | input    |
      | 31092012 |
      | 29022021 |
