Feature: able to view and reorder forum listings
  
  As a Community Life user and Admin
  I should be able to view forum posts and organize them
  So that I can efficiently find and view forum posts that interest me
  
Scenario: Order by latest
  Given I am a user who is approved
  Given I am on the forum page
  Given there are posts
  Then I should see "Apple"
  When I click "Date"
  Then I should see "Banana" before "Apple"
  
Scenario: Order by title
  Given I am a user who is approved
  Given I am on the forum page
  Given there are posts
  When I click "Title"
  Then I should see "Apple" before "Banana"