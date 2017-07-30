Feature: Able to create posts
  
  Scenario: Posting as an Admin User
    Given I am an admin
    Given I go to the new post page
    Then I should see "public"
    When I make a post
    Then I should see "Apple"
    When I go to the Posts page
    Then I should see "Apple"
        
  Scenario: Posting as a CL User
    Given I am a user who is approved
    Given I go to the new post page
    Then I should not see "public"
    When I make a post
    Then I should see "Apple"
    When I go to the Posts page
    Then I should see "Apple"
        
    
        
    