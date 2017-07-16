require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))

module WithinHelpers
  def with_scope(locator)
    locator ? within(*selector_for(locator)) { yield } : yield
  end
end
World(WithinHelpers)



  
  #now we have a user within this
Given(/^that I have a user with a valid credentials placed in the correct forms:$/) do

  visit "/sign_up"

  fill_in('Email', :with => 'us@domain.com')
  fill_in('Password', :with => 'us')
  # click_button "submit"
end


Given(/^invalid cl_user_email and a password$/) do
  # pending # Write code here that turns the phrase above into concrete actions
  visit "/sign_in"
  fill_in('Email', :with => 'usa@domain.com')
  fill_in('Password', :with => 'us')
  click_button 'button-cap'
  
  page.should have_content("Incorrect email and/or password.")
  #page.should have_content("Sign in")
  
end

Given(/^correct cl_user_email and password$/) do 
    visit "/sign_up"

  fill_in('Email', :with => 'us@domain.com')
  fill_in('Password', :with => 'us')
  click_button "submit"
  
  visit "/"
  click_button 'sign_out'
  
  visit "/sign_in"
  fill_in('Email', :with => 'us@domain.com')
  fill_in('Password', :with => 'us')
  # click_button 'button-cap'
  
  # page.should have_content("Signed in as:")
  #page.should have_content("Sign in")
  

end