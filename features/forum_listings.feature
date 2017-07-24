Feature: able to view and reorder forum listings
  
  As a Community Life user and Admin
  I should be able to view forum posts and organize them
  So that I can efficiently find and view forum posts that interest me
  
Scenario: Order by latest
  Given correct cl_user_email and password 
  Given I am on the forum page
  When I click "Date"
  # Then I should see "E" before "A"
  
Scenario: Order by title
  Given correct cl_user_email and password 
  Given I am on the forum page
  When I click "Title"
  # Then I should see "A" before "E"
    
Scenario: Making a new listing
  Given correct cl_user_email and password 
  Given I am on the forum page
  When I click "new post"
  # Then I should see "Title"
