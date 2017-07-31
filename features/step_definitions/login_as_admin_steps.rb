require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))


Given /^I am an admin$/ do
  visit new_user_session_path
  fill_in('Email_login', :with => 'testing@man.net')
  fill_in('Password', :with => 'secretpass')
  click_button "Log in"
end

Given /^invalid email and password$/ do
  # pending # Write code here that turns the phrase above into concrete actions
  visit "users/sign_in"
  fill_in('Email_login', :with => 'admin@admin.com')
  fill_in('Password', :with => 'wronggg')
end

When /^I change the approval status to true$/ do
   find('#user_approved').find(:xpath, 'option[1]').select_option
end

When /^I change the approval status to false$/ do
   find('#user_approved').find(:xpath, 'option[2]').select_option
end

Given(/^correct admin user_email and incorrect password$/) do
  visit "users/sign_in"
  fill_in('Email_login', :with => 'ireneaili@berkeley.edu')
  fill_in('Password', :with => 'ireneaili')
  click_button 'button-cap'
  
  page.should have_content("Invalid email or password")
  #page.should have_content("Sign in")
  
end



Given /^there is an unapproved user$/ do
  visit new_user_registration_path
  first_name = "User"
  last_name = "User"
  email = "user@domain.com"
  password = "password"
  fill_in 'firstName', :with => first_name
  fill_in "lastName", :with => last_name
  fill_in "Email", :with => email
  fill_in "Password", :with => password
  click_button "Sign up"
end
