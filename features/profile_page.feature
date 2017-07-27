Feature: Able to access and edit profile page(s) and goal(s)
  
  Scenario: Able to access the profile page as a user
    Given that I have a user with a valid credentials placed in the correct forms:
    When I go to the home page 
    When I press Profile
    Then I should be on the profile page

  Scenario: Able to edit profile page
    Given that I have a user with a valid credentials placed in the correct forms:
    When I follow profile
    When I press Edit 
    Then I should be on the edit page
 
  Scenario: Able to see the goals
    Given that I have a user with a valid credentials placed in the correct forms:
    When I follow profile 
    When I press Goal 
    When there are goals
    Then I should see goal
    When there are no goals
    Then I should see the progress bar
    