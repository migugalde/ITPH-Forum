Feature: able to login as an Admin
  
  As a community life user I should be able
  to put my email and password and login
  
Background: users in the database
  
# Login with invalid username
Scenario: unable to login with invalid username
  Given invalid email and password
  When I press "button-cap"
  Then I should see "Invalid email or password."
  
Scenario: able to login with valid username and correct password
  Given I am an admin
  Then I should see "welcome admin"
  When I go to the admin index page
  Then I should not see "You do not have the rights to access this page. Please contact the admin."
  

