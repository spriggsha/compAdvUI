Feature: Required data are required
  As a user of the application
  I want to receive errors when required information is not provided
  So that I do not end up with half-formed entries

#  TODO: Update yob to dob once the but is fixed
  Background:
    Given I open the site "/"

  Scenario: Name is a required field
    When I clear the inputfield "#fullName"
    And I set "Bolivia" to the inputfield "#country"
    And I click on the element "input[name='yob']"
    And I enter the text "22031978"
    And I set "Senator" to the inputfield "#position"
    And I set "http://thing.com" to the inputfield "#url"
    And I select the 1st option for element "select#risk"
    And I click on the button "form.form button"
    And I wait on element ".modal-content"
    Then I expect that element ".modal-content" becomes displayed
    Then I expect that element ".modal-body" not contains the text "You added"


  Scenario: Country is a required field
    When I set "Some Person" to the inputfield "#fullName"
    And I clear the inputfield "#country"
    And I click on the element "input[name='yob']"
    And I enter the text "22031978"
    And I set "Senator" to the inputfield "#position"
    And I set "http://thing.com" to the inputfield "#url"
    And I select the 1st option for element "select#risk"
    And I click on the button "form.form button"
    And I wait on element ".modal-content"
    Then I expect that element ".modal-content" becomes displayed
    Then I expect that element ".modal-body" not contains the text "You added"


  Scenario: Date of Birth is a required field
    When I set "Some Person" to the inputfield "#fullName"
    And I set "Bolivia" to the inputfield "#country"
    And I set "Senator" to the inputfield "#position"
    And I set "http://thing.com" to the inputfield "#url"
    And I select the 1st option for element "select#risk"
    And I click on the button "form.form button"
    And I wait on element ".modal-content"
    Then I expect that element ".modal-content" becomes displayed
    Then I expect that element ".modal-body" not contains the text "You added"


  Scenario: Position is a required field
    When I set "Some Person" to the inputfield "#fullName"
    And I set "Bolivia" to the inputfield "#country"
    And I click on the element "input[name='yob']"
    And I enter the text "22031978"
    And I clear the inputfield "#position"
    And I set "http://thing.com" to the inputfield "#url"
    And I select the 1st option for element "select#risk"
    And I click on the button "form.form button"
    And I wait on element ".modal-content"
    Then I expect that element ".modal-content" becomes displayed
    Then I expect that element ".modal-body" not contains the text "You added"


  Scenario: Source URL is NOT a required field
    When I set "Some Person" to the inputfield "#fullName"
    And I set "Bolivia" to the inputfield "#country"
    And I click on the element "input[name='yob']"
    And I enter the text "22031978"
    And I set "Senator" to the inputfield "#position"
    And I select the 1st option for element "select#risk"
    And I click on the button "form.form button"
    And I wait on element ".modal-content"
    Then I expect that element ".modal-content" becomes displayed
    Then I expect that element ".modal-body" contains the text "You added"


  Scenario: Risk Level is a required field
    When I set "Some Person" to the inputfield "#fullName"
    And I set "Bolivia" to the inputfield "#country"
    And I click on the element "input[name='yob']"
    And I enter the text "22031978"
    And I set "Senator" to the inputfield "#position"
    And I set "http://thing.com" to the inputfield "#url"
    And I click on the button "form.form button"
    And I wait on element ".modal-content"
    Then I expect that element ".modal-content" becomes displayed
    Then I expect that element ".modal-body" not contains the text "You added"
