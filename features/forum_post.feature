Feature: Able to create posts
  
  Scenario: Posting as an Admin User
    Given there is an admin
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
    
  Scenario: Editing my post
    Given there is an admin
    Given I am an admin
    When I make a post
    When I click "Edit"
    When I click "Submit"
    Then I should see "leave a comment"
    
  # Scenario: Editing a post that is not mine
  #   Given there is a post
  #   Then I should see "Apple"
  #   # Given I am a user who is approved
  #   # Given I go to the post page for "1"
  
  Scenario: Deleting a post
    Given there is an admin
    Given I am an admin
    When I make a post
    When I click "Delete"
    Then I should not see "Apple"
    
        
    
        
    