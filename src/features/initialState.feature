Feature: Test initial state of the New Entry page
  As a user of the application
  I want to see a clean, user-friendly version of the New Entry page when it is first loaded
  So that I can easily understand the requirements

  Background:
    Given I open the site "/"

  Scenario: The header is displayed
    Then I expect that element "h2" is within the viewport
    Then I expect that element "h2" is displayed

  Scenario: The name fields are displayed and are properly initialised
    Then I expect that element ".form div:nth-child(1) div label" is within the viewport
    Then I expect that element ".form div:nth-child(1) div label" is displayed
    Then I expect that element ".form div:nth-child(1) div label" matches the text "Full name"
    Then I expect that element "#fullName" is within the viewport
    Then I expect that element "#fullName" is displayed
    Then I expect that container "#fullName" contains the placeholder "John Doe"

  Scenario: The country fields are displayed and are properly initialised
    Then I expect that element ".form div:nth-child(2) div label" is within the viewport
    Then I expect that element ".form div:nth-child(2) div label" is displayed
    Then I expect that element ".form div:nth-child(2) div label" matches the text "Country"
    Then I expect that element "#country" is within the viewport
    Then I expect that element "#country" is displayed
    Then I expect that container "#country" contains the placeholder "Neverland"

  Scenario: The date of birth fields are displayed and are properly initialised
    Then I expect that element ".form div:nth-child(3) div label" is within the viewport
    Then I expect that element ".form div:nth-child(3) div label" is displayed
    Then I expect that element ".form div:nth-child(3) div label" matches the text "Date of birth"
    Then I expect that element "#dob" is within the viewport
    Then I expect that element "#dob" is displayed
    Then I expect that container "#dob" contains the placeholder "dd/mm/yyyy"

  Scenario: The position fields are displayed and are properly initialised
    Then I expect that element ".form div:nth-child(4) div label" is within the viewport
    Then I expect that element ".form div:nth-child(4) div label" is displayed
    Then I expect that element ".form div:nth-child(4) div label" matches the text "Position"
    Then I expect that element "#position" is within the viewport
    Then I expect that element "#position" is displayed
    Then I expect that container "#position" contains the placeholder "Senator"

  Scenario: The source info Url fields are displayed and are properly initialised
    Then I expect that element ".form div:nth-child(5) div label" is within the viewport
    Then I expect that element ".form div:nth-child(5) div label" is displayed
    Then I expect that element ".form div:nth-child(5) div label" matches the text "Source info URL"
    Then I expect that element "#url" is within the viewport
    Then I expect that element "#url" is displayed
    Then I expect that container "#url" contains the placeholder "url"

  Scenario: The risk level fields are displayed and are properly initialised
    Then I expect that element ".form div:nth-child(6) div label" is within the viewport
    Then I expect that element ".form div:nth-child(6) div label" is displayed
    Then I expect that element ".form div:nth-child(6) div label" matches the text "Risk level"
    Then I expect that element "select#risk" is within the viewport
    Then I expect that element "select#risk" is displayed
    Then I expect that element "#risk option:nth-child(1)" matches the text "None"
    Then I expect that element "#risk option:nth-child(2)" matches the text "Low"
    Then I expect that element "#risk option:nth-child(3)" matches the text "Medium"
    Then I expect that element "#risk option:nth-child(4)" matches the text "High"
    Then I expect that element "#risk option:nth-child(5)" matches the text "HUGE"
