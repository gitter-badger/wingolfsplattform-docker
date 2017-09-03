When(/^I visit "([^"]*)"$/) do |url|
  visit url
end

Then(/^I should see "([^"]*)"$/) do |text|
  page.has_text? text
end