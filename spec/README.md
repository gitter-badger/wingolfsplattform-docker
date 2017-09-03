# Spec for wingolfsplattform-docker

This is the integration test suite for wingolfsplattform-docker.

## Running the tests

```bash
git clone git@github.com:fiedl/wingolfsplattform-docker.git
cd wingolfsplattform-docker

make test_locally
```

## Test stack

The integration tests are written in [Cucumber](https://semaphoreci.com/community/tutorials/introduction-to-writing-acceptance-tests-with-cucumber). For example:

```cucumber
# services/hello_world.feature

Feature: Hello world service

Scenario: Visiting the hello_world service
  When I visit "http://localhost:5001"
  Then I should see "Hello World!"
```

The steps, e.g. "When I visit", are defined in [cucumber/step_definitions](cucumber/step_definitions).

The above spec launches a browser that visits the given url and checks whether the text is present in the browser window. The browser testing is done with [Capybara](https://github.com/teamcapybara/capybara#using-capybara-with-cucumber) and Firefox.
