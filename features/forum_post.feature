Feature: Able to create posts
  
  Scenario: Posting as an Admin User
    Given that I am an Admin User
        And I fill in the "Title box"
        And I fill in the "Message box" 
        And I fill in the "Tag box" 
        And I fill in a "Category" 
        When I press "Post"
        Then I should see the post on the "Forum View Page"
        And I should see the post on the "Main Page" 
        
  Scenario: Posting as a CL User
    Given that I am a CL User
        And I fill in the "Title box"
        And I fill in the "Message box"
        And I fill in the "tag box"
        And I fill in a "category box"
        When I press "Post"
        Then I should see the post "Forum View Page"
        And I should not see the post on the "Main Page" 
        
    
        
    