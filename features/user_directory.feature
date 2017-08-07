Feature: directory page for users
  
  As a community life member I want to
  see a list of all the users.
  I want to be able to view the profiles of the users
  I want to connect with.
  
Scenario: view a list of all of the users and be able to view their profile
  Given I am a user who is approved
  When I go to the directory page
  Then I should see "User"
  When I click "User"
  Then I should see "goal"
  Then I should see "My Completed Tasks"