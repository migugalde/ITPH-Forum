Feature: able to login as cl_user
  
  As a community life user I should be able
  to put my email and password and login
  
  
Scenario: I am trying to create a user
  Given that I have a user with a valid credentials placed in the correct forms:
  
# Login with invalid username
Scenario: unable to login with invalid username
  Given invalid cl_user_email and a password
  When I press "button-cap"
  Then I should see "Invalid Email or password."
  
# Login with valid username and password
Scenario: able to login with valid username and correct password
  Given correct cl_user_email and password 
  # When I press "button-cap"
  # Then I should see "Signed in as:"

  
# Login with invalid username and correct password  
Scenario: unable to login with valid username and incorrect password
  Given correct cl_user_email and incorrect password
  When I press "button-cap"
  Then I should see "Incorrect email and/or password."