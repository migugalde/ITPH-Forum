require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))

#declaritive step definitions to match steps

# Given /I go to the (.*) page$/ do |page_name|
#   visit path_to(page_name)
# end 

When /"(.*)" uses email "(.*)", password "(.*)"/ do |name, email, password|
    full_name = name.split(" ")
    first = full_name[0]
    last = full_name[1]
    fill_in('First Name', :with => first)
    fill_in("Last Name", :with => last)
    fill_in("email", :with => email)
    fill_in("password", :with => password)
end

When /he presses "([^"]*)"$/ do |button|
  click_button(button)
end

When /he follows "([^"]*)"$/ do |link|
  click_link(link)
end

Then /he should be redirected to (.+)$/ do |page_name|
  current_path = URI.parse(current_url).path
  if current_path.respond_to? :should
    current_path.should == path_to(page_name)
  else
    assert_equal path_to(page_name), current_path
  end
end

Then /he should see "(.*)"/ do |e1|
  expect(page).to have_content("#{e1}")
end

