Feature: directory page for users
  
  As a community life member I want to
  see a list of all the users.
  I want to be able to view the profiles of the users
  I want to connect with.
  
Scenario: view a list of all of the users
  Given I am a user who is approved
#   When I go to the directory page
  Then I should see a list of all users
  When I hover over the image of user
  Then I should preview their profile page
  
Scenario: view the profile of a user I want to connect with
  Given I am a user who is approved
#   When I go to the directory page
  Then I should see a list of all users
  When I click on a user
  Then I should be on their profile page