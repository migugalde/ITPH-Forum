When /^I make a post$/ do
  title = "Apple"
  description = "Apples are sweet"
  visit new_post_path
  fill_in "post_title", :with => title
  fill_in "post_description", :with => description
  click_button "Submit"
end

# Given /^there is a post$/ do
#   title = "Apple"
#   description = "Apples are sweet"
#   user_id = 2
#   Post.new(:title => title, :description => description, :user_id => user_id)
# end