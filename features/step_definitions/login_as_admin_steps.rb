require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))



  #now we have a user within this
Given(/^that I have an Admin user with a valid credentials placed in the correct forms:$/) do

  visit "users/sign_in"

  fill_in('Email_login', :with => 'ireneaili@berkeley.edu')
  fill_in('Password', :with => 'ireneaili')
  # click_button "submit"
end


Given(/^invalid admin_user_email and a password$/) do
  # pending # Write code here that turns the phrase above into concrete actions
  visit "users/sign_in"
  fill_in('Email_login', :with => 'ireneaili@berkeley.edu')
  fill_in('Password', :with => 'ireneaili')
  click_button 'button-cap'
  
  page.should have_content("Invalid email or password.")
  #page.should have_content("Sign in")
  
end

Given(/^correct admin_user_email and password$/) do 
    visit "users/sign_up"

  fill_in('Email', :with => 'ireneaili@berkeley.edu')
  # fill_in('Password', :with => 'ireneaili') *********MAKE SURE TO FIX THIS********
  # click_button "submit"
  
  # visit "/"
  # click_button 'sign_out'
  
  # visit "/sign_in"
  # fill_in('Email', :with => 'us@domain.com')
  # fill_in('Password', :with => 'us')
  # click_button 'button-cap'
  
  # page.should have_content("Signed in as:")
  #page.should have_content("Sign in")
  

end

Given(/^correct admin user_email and incorrect password$/) do
  visit "users/sign_in"
  fill_in('Email_login', :with => 'ireneaili@berkeley.edu')
  fill_in('Password', :with => 'ireneaili')
  click_button 'button-cap'
  
  page.should have_content("Invalid email or password")
  #page.should have_content("Sign in")
  
end
