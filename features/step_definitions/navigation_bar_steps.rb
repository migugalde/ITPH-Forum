require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))

module WithinHelpers
  def with_scope(locator)
    locator ? within(*selector_for(locator)) { yield } : yield
  end
end
World(WithinHelpers)

When /^(?:|I )press "([^"]*)"$/ do |button|
  click_button(button)
end

# Then /^(?:|I )should not be on ([^"]*)$/ do |page_id|
#     # pending
# end

# Then /^(?:|I )should be on ([^"]*)$ page/ do |page_id|
#     # pending
# end

Given(/^I am on the home page$/) do
    visit '/community'
    expect(page).to have_text("Welcome to the ITPH Community!")
end

Given /^I am on "([^"]*)"$/ do |path|
  visit path
end 

When /^(?:|I )click "([^"]*)"$/ do |link|
  if link.eql? ("home")
    visit "/community"
  elsif link.eql? ("New Post") 
    visit "/posts/new"
  elsif link.eql? ("Forum")
    visit "/posts"
  elsif link.eql? ("Profile")
    visit "/navbar/profile"
  else
    visit "navbar/" + link 
  end
end

# When(/^I click "([^"]*)"$/) do |arg1|
#   find('#clicker').press
#   click_link(arg1)
# end

# Then (/^(?:|I ) should see the text "([^"]*)"$/) do |text|
#     expect(page).to have_text(text)
# end

Then (/^I should see the text "([^"]*)"$/) do |text|
  expect(page).to have_text(text)
end
