Feature: Hello world service

Scenario: Visiting the hello_world service
  When I visit "http://localhost:5001"
  Then I should see "Hello World!"
