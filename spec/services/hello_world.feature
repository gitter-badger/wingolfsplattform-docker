Feature: Hello world service

Scenario: Visiting the hello_world service
  When I visit "http://hello_world:80"
  Then I should see "Hello World!"
