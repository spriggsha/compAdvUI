Feature: Test name validation on New Entry page
  As a user of the application
  I want to have good validation on my new entries
  So that I can be sure my name data is good

#  TODO: Update yob to dob once the but is fixed
  Background:
    Given I open the site "/"

    Scenario Outline: Valid Name data <goodData>
      When I set "<goodData>" to the inputfield "#fullName"
      And I set "Bolivia" to the inputfield "#country"
      And I click on the element "input[name='yob']"
      And I enter the text "22031978"
      And I set "Senator" to the inputfield "#position"
      And I set "http://thing.com" to the inputfield "#url"
      And I select the 1st option for element "select#risk"
      And I click on the button "form.form button"
      And I wait on element ".modal-content"
      Then I expect that element ".modal-content" becomes displayed
      Examples:
      |goodData |
      |Marc Stylez|
      |MarcStylez|
      |Marc Stylez-heppa|
      |Lydia Stanchion-Rowling Gonzalez|
      |Sen Horsen Reid|
      |Sen. Horsen Reid|
      |Luisa Francisco Don Pablo Ruschita Sanches|
      |James Fanto Jr.|
      |Henry Phillips IV|
      |Martha Piong, Esq|
      |Martha Piong, Esq.|
      |Grave àèìòùÀÈÌÒÙ|
      |Acute áéíóúýÁÉÍÓÚÝ|
      |Caret âêîôûðÂÊÎÔÛÐ|
      |Tilde ãñõÃÑÕ|
      |Umlaut äëïöüÿÄËÏÖÜŸ|
      |Angstrom åÅ|
      |Ligatures æœÆŒ or ß|
      |Cardon çÇ|

  Scenario Outline: Invalid Name data <badData>
    When I set "<badData>" to the inputfield "#fullName"
    And I set "Bolivia" to the inputfield "#country"
    And I click on the element "input[name='yob']"
    And I enter the text "22031978"
    And I set "Senator" to the inputfield "#position"
    And I set "http://thing.com" to the inputfield "#url"
    And I select the 1st option for element "select#risk"
    And I click on the button "form.form button"
    Then I wait on element ".modal-content" to be displayed
    Then I expect that element ".modal-body" not contains the text "You added"
    Examples:
      |badData |
      |Marc 1|
      |Marc? Rudio|
      |Emm* Busch|
      |Frank <Legato>|
      |%INSERT INTO%|
      |!Norma|
      |M{arc Stylez-heppa}|
      |Dween#|
