require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))

Given(/^the user is already logged into the site and they are approved$/) do
  email = 'testing@man.net'
  password = 'secretpass'
  admin = 'false'
  approved = 'true'
  first_name = 'User'
  User.new(:email => email, :password => password, :admin => admin, :approved => approved, :first_name => first_name).save!
  visit '/users/sign_in'
  fill_in "Email_login", :with => email
  fill_in "Password", :with => password
  click_button "Log in"
end

Given(/^that the user successfuly posts their first Post$/) do
	title = "Apple"
    description = "Apples are sweet"
    visit new_post_path
    fill_in "post_title", :with => title
    fill_in "post_description", :with => description
    click_button "Submit"
    visit posts_path

end

Then(/^the user will be awarded a badge$/) do
	title = "Apple"
    description = "Apples are sweet"
    visit new_post_path
    fill_in "post_title", :with => title
    fill_in "post_description", :with => description
    click_button "Submit"
    visit posts_path
	email = 'testing@man.net'
	@current_user = User.find_by email: email
	# expect(@current_user.badges.length).to eq(10)

end

Given(/^that the user finishes their first goal$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the user will have a badge appear on their profile$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^that atleast one user has won a badge$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^they visit badges page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^they will see a new row$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^that a user lies about their accomplishment$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the admin will revoke the badge$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^that I have a user with a valid credentials placed in the correct forms:$/) do
  pending # Write code here that turns the phrase above into concrete actions
end


