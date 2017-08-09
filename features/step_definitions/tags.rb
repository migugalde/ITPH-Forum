Given /^I fill in a new post$/ do
  title = "Apple"
  description = "Apples are sweet"
  visit new_post_path
  fill_in "post_title", :with => title
  fill_in "post_description", :with => description
end

  #title = "Apple"
  #description = "Apples are sweet"
  #visit new_post_path
  #fill_in "post_title", :with => title
  #fill_in "post_description", :with => description
  #click_button "Submit"

Given(/^I have filled out content$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I fill out tags with "([^"]*)"$/) do |arg1|
  fill_in "post_all_tags", :with => arg1
end

When(/^I click the Create Post button$/) do
  click_button "Submit"
end

Then(/^I should see the "([^"]*)" tag$/) do |arg1|
  visit posts_path
  page.should have_content(arg1)
end

When(/^I click on the tag search bar$/) do
  visit posts_path
end

# When(/^type "([^"]*)"$/) do |arg1|
#   pending
# end

# Then(/^I should see "([^"]*)" in the drop down$/) do |arg1|
#   pending
# end

# Given(/^I am logged in as an admin$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end

# When(/^I create a post$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end

# When(/^tag it as admin$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end

# Then(/^I should see it on the homepage$/) do
#   pending # Write code here that turns the phrase above into concrete actions
# end