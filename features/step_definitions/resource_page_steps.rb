require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))

# When(/^I fill in Description$/) do
#   # Write code here that turns the phrase above into concrete actions
#   #fill_in('name', :with => 'anything')
#   fill_in('description', :with => 'something')


# end

Given(/^correct admin email and password$/) do 
  visit "users/sign_in"

  fill_in('Email_login', :with => 'tester@tester.com')
  fill_in('Password', :with => 'tester')
  click_button "button-cap"
  
  visit "/community"
  page.should have_content("Welcome to the ITPH Community!")

end

When(/^I clicking a value "([^"]*)"$/) do |arg1|
  # Write code here that turns the phrase above into concrete actions
  click_on('arg1')

end