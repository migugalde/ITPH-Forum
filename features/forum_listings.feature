Feature: able to view and reorder forum listings
  
  As a Community Life user and Admin
  I should be able to view forum posts and organize them
  So that I can efficiently find and view forum posts that interest me
  
Scenario: Order by latest
  Given I am on the forum page
  When I click "latest"
  Then I should see "Post 2" before "Post 1"
  
Scenario: Order by recent
  Given I am on the forum page
  When I click "recent"
  Then I should see "Post 1" before "Post 2"
    
Scenario: Order by category
  Given I am on the forum page
  When I click "category"
  Then I should see "Alphabet" before "Beta"
    
Scenario: Filter by category
  Given I am on the forum page
  When I click "category"
  And I follow "Alphabet"
  Then I should not see "Beta"

Scenario: Filter by tag
  Given I am on the forum page
  When I click "Tags"
  And I follow "Support"
  Then I should see "#support"
    
Scenario: Making a new listing
  Given I am on the forum page
  When I click "New Post"
  Then I should be on the forum post page
