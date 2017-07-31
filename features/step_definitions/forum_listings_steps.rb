require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))


When(/^I click "([^"]*)"$/) do |arg1|
    click_on arg1
end 

Then(/^I should see "([^"]*)" before "([^"]*)"$/) do |arg1, arg2|
    @index_one = page.body.index(arg1)
    @index_two = page.body.index(arg2)
    expect(@index_one < @index_two).to eq true
end

Given /^there are posts$/ do
    title = "Apple"
    description = "Apples are sweet"
    visit new_post_path
    fill_in "post_title", :with => title
    fill_in "post_description", :with => description
    click_button "Submit"
    
    title2 = "Banana"
    description2 = "Bananas are mushy"
    visit new_post_path
    fill_in "post_title", :with => title2
    fill_in "post_description", :with => description2
    click_button "Submit"
    
    visit posts_path
end