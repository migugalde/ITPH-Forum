require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))

#declaritive step definitions to match steps

Given /^there is an admin$/ do
  email = 'testing@man.net'
  password = 'secretpass'
  admin = 'true'
  approved = 'true'
  first_name = 'Admin'
  User.new(:email => email, :password => password, :admin => admin, :approved => approved, :first_name => first_name).save!
end

When /^I sign up$/ do
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

When /^I login$/ do
  visit new_user_session_path
  fill_in('Email_login', :with => 'user@domain.com')
  fill_in('Password', :with => 'password')
  click_button "Log in"
end
