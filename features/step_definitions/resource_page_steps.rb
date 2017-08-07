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

When(/^I clicking a value "([^"]*)"$/) do |arg1|
  # Write code here that turns the phrase above into concrete actions
  click_on('arg1')
end

When /^I upload a file$/ do
  attach_file("attach", Rails.root.join('app', 'assets', 'images', 'mini.jpg'))
end


Then(/^flash notice should not be blank$/) do
  page.should have_selector ".notice", text: "Are you sure you want to delete"
end


########################


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







# Then /^the "([^"]*)" field shall have the error "([^"]*)"$/ do |field, error_message|
#   element = find_field(field)
#   classes = element.find(:xpath, '..')[:class].split(' ')

#   form_for_input = element.find(:xpath, 'ancestor::form[1]')
#   using_formtastic = form_for_input[:class].include?('formtastic')
#   error_class = using_formtastic ? 'error' : 'field_with_errors'

#   if classes.respond_to? :should
#     classes.should include(error_class)
#   else
#     assert classes.include?(error_class)
#   end

#   if page.respond_to?(:should)
#     if using_formtastic
#       error_paragraph = element.find(:xpath, '../*[@class="inline-errors"][1]')
#       error_paragraph.should have_content(error_message)
#     else
#       page.should have_content("#{field.titlecase} #{error_message}")
#     end
#   else
#     if using_formtastic
#       error_paragraph = element.find(:xpath, '../*[@class="inline-errors"][1]')
#       assert error_paragraph.has_content?(error_message)
#     else
#       assert page.has_content?("#{field.titlecase} #{error_message}")
#     end
#   end
# end






 



