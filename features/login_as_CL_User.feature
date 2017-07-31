Feature: able to login as cl_user
  
  As a community life user I should be able
  to put my email and password and login
  
# Login with valid username and password as an approved user
Scenario: able to login with valid username and correct password when I am approved
  Given I am a user who is approved
  Then I should see "welcome user"
  When I go to the home page
  Then I should see "welcome user"
  
Scenario: not able to login even with valid credentials if I am not approved
  Given I am a user who is not approved
  Then I should see "Your account has not been approved by the admin yet"
  
# Login with invalid username and correct password  
Scenario: unable to login with valid username and incorrect password
  Given correct cl_user_email and incorrect password
  When I press "button-cap"
  Then I should see "Invalid email or password."
  
# I should not be able to visit the admin page
Scenario: unable to visit the admin page as a user
  Given I am a user who is approved
  When I go to the admin index page
  Then I should see "You do not have the rights to access this page. Please contact the admin."