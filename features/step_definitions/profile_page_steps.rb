require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))



Given(/^correct admin email and password for profile page$/) do 
  # visit "users/sign_in"

  # fill_in('Email_login', :with => 'tester@tester.com')
  # fill_in('Password', :with => 'tester')
  # click_button "button-cap"
  # User.new(:email => 'tester@tester.com', :password => 'tester', :admin => true).save!
  email = 'tester@tester.com'
  password = 'tester'
  admin = 'true'
  approved = 'true'
  first_name = 'tester'
  username = "tester"
  User.new(:email => email, :password => password, :admin => admin, :approved => approved, :first_name => first_name, :username => username).save!
  visit '/users/sign_in'
  fill_in "Email_login", :with => email
  fill_in "Password", :with => password
  click_button "Log in"

  
  
  visit "/community"
  page.should have_content("ITPH Community Announcements!")

end
Given(/^correct non admin email and password for profile page$/) do 
  # visit "users/sign_in"

  # fill_in('Email_login', :with => 'tester@tester.com')
  # fill_in('Password', :with => 'tester')
  # click_button "button-cap"
  # User.new(:email => 'tester@tester.com', :password => 'tester', :admin => true).save!
  email = 'tester@tester.com'
  password = 'tester'
  admin = 'false'
  approved = 'true'
  first_name = 'tester'
  username = 'tester'
  User.new(:email => email, :password => password, :admin => admin, :approved => approved, :first_name => first_name, :username => username).save!
  visit '/users/sign_in'
  fill_in "Email_login", :with => email
  fill_in "Password", :with => password
  click_button "Log in"

  
  
  visit "/community"
  page.should have_content("ITPH Community Announcements!")

end

When /^(?:|I )proceeded to (.+)$/ do |page_name|
  visit path_to(page_name)
end

When /^I upload an image$/ do
  attach_file("user_avatar", Rails.root.join('app', 'assets', 'images', 'mini.jpg'))
end




