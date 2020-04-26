Feature: Url validation on New Entry page
  As a user of the application
  I want to have good validation on my new entries
  So that I can be sure my Url data is good

#  TODO: Update yob to dob once the but is fixed
  Background:
    Given I open the site "/"

  Scenario Outline: URL information is validated in-page: <input>
    And I click on the element "#url"
    And I enter the text "<input>"
    And I click on the element "h2"
    Then I expect that element ".valid-feedback" is displayed
    And I expect that element ".invalid-feedback" is not displayed
    Examples:
      | input                                             |
      | foo.com                                   |
      | http://foo.com/blah_blah                          |
      | https://foo.com/blah_blah                         |
      | http://foo.com/blah_blah/                         |
      | https://foo.com/blah_blah/                        |
      | http://foo.com/blah_blah_(wikipedia)              |
      | https://foo.com/blah_blah_(wikipedia)             |
      | http://foo.com/blah_blah_(wikipedia)_(again)      |
      | https://foo.com/blah_blah_(wikipedia)_(again)     |
      | http://www.example.com/wpstyle/?p=364             |
      | https://www.example.com/wpstyle/?p=364            |
      | https://www.example.com/foo/?bar=baz&inga=42&quux |
      | https://www.example.com/foo/?bar=baz&inga=42&quux |
      | http://foo.com/blah_(wikipedia)#cite-1            |
      | https://foo.com/blah_(wikipedia)#cite-1           |
      | http://foo.com/blah_(wikipedia)_blah#cite-1       |
      | https://foo.com/blah_(wikipedia)_blah#cite-1      |
      | http://foo.com/(something)?after=parens           |
      | https://foo.com/(something)?after=parens          |
      | http://code.google.com/events/#&product=browser   |
      | https://code.google.com/events/#&product=browser  |
      | http://j.mp                                       |
      | https://j.mp                                      |
      | http://foo.bar/?q=Test%20URL-encoded%20stuff      |
      | https://foo.bar/?q=Test%20URL-encoded%20stuff     |
      | http://1337.net                                   |
      | https://1337.net                                  |
      | http://a.b-c.de                                   |
      | https://a.b-c.de                                  |
      | http://223.255.255.254                            |
      | https://223.255.255.254                           |


  Scenario Outline: URLs with logins are invalidated in-page: <input>
    And I click on the element "#url"
    And I enter the text "<input>"
    And I click on the element "h2"
    Then I expect that element ".valid-feedback" is not displayed
    And I expect that element ".invalid-feedback" is displayed
    Examples:
      | input                                               |
      | http://userid:password@example.com:8080             |
      | http://userid:password@example.com:8080/            |
      | http://userid@example.com                           |
      | http://userid@example.com/                          |
      | http://userid@example.com:8080                      |
      | http://userid@example.com:8080/                     |
      | http://userid:password@example.com                  |
      | http://userid:password@example.com/                 |
      | http://-.~_!$&'()*+\|;=:%40:80%2f::::::@example.com |

  Scenario Outline: Invalid URLs are invalidated in-page: <input>
    And I click on the element "#url"
    And I enter the text "<input>"
    And I click on the element "h2"
    Then I expect that element ".valid-feedback" is not displayed
    And I expect that element ".invalid-feedback" is displayed
    Examples:
      | input                                     |
      | http://                                   |
      | http://.                                  |
      | http://..                                 |
      | http://../                                |
      | http://?                                  |
      | http://??                                 |
      | http://??/                                |
      | http://#                                  |
      | http://##                                 |
      | http://##/                                |
      | http://foo.bar?q=Spaces should be encoded |
      | //                                        |
      | //a                                       |
      | ///a                                      |
      | ///                                       |
      | http:///a                                 |
      | rdar://1234                               |
      | h://test                                  |
      | http:// shouldfail.com                    |
      | :// should fail                           |
      | http://foo.bar/foo(bar)baz quux           |
      | ftps://foo.bar/                           |
      | http://0.0.0.0                            |
      | http://3628126748                         |
