require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))



# Given(/^I am on the forum page$/) do
#   #visit 'navbar/forum'
#   visit 'posts'
# end

When(/^I click "([^"]*)"$/) do |arg1|
    click_on arg1
end 

Then(/^I should see "([^"]*)" before "([^"]*)"$/) do |arg1, arg2|
    p page.body
    @index_one = page.body.index(arg1)
    @index_two = page.body.index(arg2)
    expect(@index_one < @index_two).to eq true
end

# When(/^I follow "([^"]*)"$/) do |arg1|
#   pending # Write code here that turns the phrase above into concrete actions
# end

# Then(/^I should not see "([^"]*)"$/) do |arg1|
#   pending # Write code here that turns the phrase above into concrete actions
# end

# Then(/^I should be on the forum post page$/) do
#   # Write code here that turns the phrase above into concrete actions
#   visit 'posts/new'
# end