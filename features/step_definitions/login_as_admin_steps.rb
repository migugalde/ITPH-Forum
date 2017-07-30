require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))


Given /^I am an admin$/ do
  email = 'testing@man.net'
  password = 'secretpass'
  admin = 'true'
  approved = 'true'
  first_name = 'Admin'
  User.new(:email => email, :password => password, :admin => admin, :approved => approved, :first_name => first_name).save!
  visit '/users/sign_in'
  fill_in "Email_login", :with => email
  fill_in "Password", :with => password
  click_button "Log in"

end

Given /^invalid email and password$/ do
  # pending # Write code here that turns the phrase above into concrete actions
  visit "users/sign_in"
  fill_in('Email_login', :with => 'admin@admin.com')
  fill_in('Password', :with => 'wronggg')
end