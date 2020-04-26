# New Entry Page Tests
## Purpose
Write a basic set of tests for the UI at http://ec2-34-250-139-60.eu-west-1.compute.amazonaws.com/

## Tools
- [WebdriverIO](https://webdriver.io/) using the [Cucumber](https://webdriver.io/docs/frameworks.html#using-cucumber) testRunner
- based off the [WebdriverIO/cucumberJS boilerplate](https://github.com/webdriverio/cucumber-boilerplate) 
- [Allure](https://www.npmjs.com/package/allure-commandline) reports (Requires Java 8)

## To Run
1. clone repository
2. `npm install` the project
3. `npm run test`

## Configuration
The framework is currently set to run against `chrome` and to run up to 5 browser instances simultaneously.  To adjust this, modify the `capabilities` array in `./wdio.conf.js`

## Test Strategy
### Assumptions
- the UI is connected to an API with its own set of tests; the UI tests should only include those tests which can ONLY be run against the UI and will not duplicate effort in a good API test suite (mostly data validation)
- if the confirmation modal appears with "You added..." then the connection to the API was successful and a 200 was returned
- name and position data can be just about anything, so long as they are not numerical and do not include special characters
- as country data is not a drop down, the assumption is that not much validation is required on the front-end.
- "year of birth" is meant to be "date of birth"
- date of birth requires only that dates are VALID, and does not require that they are in the past.  Future dates are either stripped out in the API or are may be allowed in some circumstances.
- risk should contain 5 levels of risk, and that the lowest level is "None"

### Improvements to make
- any future version of this framework would require a page object model
- the given/when/then step files given in the boilerplate code should be replaced with a structure more closely resembling the structure of the application
- cucumberjs doesn't handle parallelisation all that well; some extra code could make that work better
