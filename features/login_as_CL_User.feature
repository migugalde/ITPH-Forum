Feature: able to login as cl_user
  
  As a community life user I should be able
  to put my email and password and login
  
# Login with invalid username
Scenario: unable to login with invalid username
  Given invalid cl_user_email and a password
#  When I press "login"
#  Then I should see "Invalid email address and/or password"
  
 # Login with valid username and password
Scenario: able to login with valid username and correct password
  Given correct cl_user_email and password
#  When I press "login"
#  Then I should see "#cl_user"
  
# Login with valid username and incorrect password  
Scenario: unable to login with valid username and incorrect password
  Given correct cl_user_email and password
#  When I press "login"
#  Then I should see "Invalid email address and/or password"

