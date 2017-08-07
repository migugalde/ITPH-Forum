Feature: Able to access and edit profile page(s) and goal(s)
  
  Scenario: Able to access the profile page as a user
    Given correct non admin email and password for profile page
    When I go to the home page 
    When I proceeded to the forum page
    When I follow "new post"
    When I press "Submit"

    When I follow "tester@tester.com"
    Then I should see "Looks like you haven't set a new goal yet"

  Scenario: Able to edit profile page
    Given correct admin email and password for profile page
    When I go to the home page 
    When I proceeded to the forum page
    When I follow "new post"
    When I press "Submit"
    When I follow "tester@tester.com"
    Then I should see "Looks like you haven't set a new goal yet"
    When I upload an image
    When I press "life"
    Then I am on the profile page for "tester@tester.com"
    When I follow "name_user"
    Then I should be on the profile page for "tester@tester.com"
    
 
  # Scenario: Able to see the goals
  #   Given correct admin email and password for profile page
  #   When I follow profile 
  #   When I press Goal 
  #   When there are goals
  #   Then I should see goal
  #   When there are no goals
  #   Then I should see the progress bar
    