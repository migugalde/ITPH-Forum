When /^I make a post$/ do
  title = "Apple"
  description = "Apples are sweet"
  visit new_post_path
  fill_in "post_title", :with => title
  fill_in "post_description", :with => description
  click_button "Submit"
end