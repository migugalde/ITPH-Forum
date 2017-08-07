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
  User.new(:email => email, :password => password, :admin => admin, :approved => approved, :first_name => first_name).save!
  visit '/users/sign_in'
  fill_in "Email_login", :with => email
  fill_in "Password", :with => password
  click_button "Log in"

  
  
  visit "/community"
  page.should have_content("ITPH Community Announcements!")

end
Given(/^correct non admin email and password$/) do 
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
  @user = User.new(:email => email, :password => password, :admin => admin, :approved => approved, :first_name => first_name).save!
  visit '/users/sign_in'
  fill_in "Email_login", :with => email
  fill_in "Password", :with => password
  click_button "Log in"

  
  
  visit "/community"
  page.should have_content("ITPH Community Announcements!")

end


When /^I upload a file$/ do
  attach_file("attach", Rails.root.join('app', 'assets', 'images', 'mini.jpg'))
end


When /^(?:|I )proceed to (.+)$/ do |page_name|
  visit path_to(page_name)
end

When /^(?:|I )press the button "([^"]*)"$/ do |button|
  click_button(button)
end

When /^(?:|I )follow the link "([^"]*)"$/ do |link|
  click_link(link)
end


Then /^(?:|I )shall see "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should have_content(text)
  else
    assert page.has_content?(text)
  end
end



Then /^(?:|I )shall not see "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should have_no_content(text)
  else
    assert page.has_no_content?(text)
  end
end

When /^(?:|I )fill in the "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end

Given /^(?:|I )will be on (.+)$/ do |page_name|
  visit path_to(page_name)
end










 



