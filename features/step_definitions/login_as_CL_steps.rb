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

Given(/^invalid cl_user_email and a password$/) do
  # pending # Write code here that turns the phrase above into concrete actions
  visit "/sign_in"
  fill_in('Email', :with => 'us@domain.com')
  fill_in('Password', :with => 'us')
  click_button 'button-cap'
  
  # page.should have_content("Invalid email address and/or password")
  page.should have_content("Sign in")
  
end

Given(/^correct cl_user_email and password$/) do
  # pending # Write code here that turns the phrase above into concrete actions
end