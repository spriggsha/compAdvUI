Feature: Confirmation modal
  As a user of the application
  I want to see a confirmation message after I've submitted a new entry
  So that I can be sure that my information has been stored properly

  Background:
    Given I open the site "/"

  Scenario: Verify Modal appearance and functionality
    When I set "Lex Luthor" to the inputfield "#fullName"
    And I set "Bolivia" to the inputfield "#country"
    And I click on the element "input[name='yob']"
    And I enter the text "22031978"
    And I set "President" to the inputfield "#position"
    And I set "http://thing.com" to the inputfield "#url"
    And I select the 1st option for element "select#risk"
    And I click on the button "form.form button"
    Then I wait on element ".modal-content" to be displayed
    Then I expect that element ".modal-body" is displayed
    Then I expect that element ".modal-body" is within the viewport
    Then I expect that element ".modal-content" is displayed
    Then I expect that element ".modal-content" is within the viewport
    Then I expect that element ".modal-footer>button" is displayed
    Then I expect that element ".modal-footer>button" is within the viewport


  Scenario: Verify name data has been transferred to the API
    When I set "Lex Luthor" to the inputfield "#fullName"
    And I set "Bolivia" to the inputfield "#country"
    And I click on the element "input[name='yob']"
    And I enter the text "22031978"
    And I set "President" to the inputfield "#position"
    And I set "http://thing.com" to the inputfield "#url"
    And I select the 1st option for element "select#risk"
    And I click on the button "form.form button"
    Then I wait on element ".modal-content" to be displayed
    Then I expect that element ".modal-body" contains the text "You added Lex Luthor to the list of entities."
