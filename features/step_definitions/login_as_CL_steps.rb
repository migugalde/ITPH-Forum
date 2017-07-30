require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))

Given /^I am a user who is approved$/ do
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

Given /^correct cl_user_email and incorrect password$/ do
  email = 'testing@man.net'
  password = 'secretpass'
  admin = 'false'
  approved = 'true'
  first_name = 'User'
  User.new(:email => email, :password => password, :admin => admin, :approved => approved, :first_name => first_name).save!
  visit '/users/sign_in'
  fill_in "Email_login", :with => email
  fill_in "Password", :with => "wrong"
  click_button "Log in"
end

Given /^I am a user who is not approved$/ do
  email = 'testing@man.net'
  password = 'secretpass'
  admin = 'false'
  approved = 'false'
  first_name = 'User'
  User.new(:email => email, :password => password, :admin => admin, :approved => approved, :first_name => first_name).save!
  visit '/users/sign_in'
  fill_in "Email_login", :with => email
  fill_in "Password", :with => password
  click_button "Log in"
end

