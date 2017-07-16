# Feature: As an Admin, I need to log in 
# Scenario: Able to log in with correct username and password 
#   Given correct Admin username and password 
#   When I click login 
#   Then I should see Admin version homepage 
# Scenario: 
#   Given incorrect Admin username or password 
#   When I click login 
#   Then I should get error warning
   
  
Feature: able to login as an Admin
  
  As a community life user I should be able
  to put my email and password and login
  
  
Scenario: I am trying to create an Admin user
  Given that I have an Admin user with a valid credentials placed in the correct forms:
  
# Login with invalid username
Scenario: unable to login with invalid username
  Given invalid cl_user_email and a password
  When I press "Sign in"
  Then I should see "Incorrect email and/or password."
  
# Login with valid username and password
Scenario: able to login with valid username and correct password
  Given correct cl_user_email and password 
  When I press "button-cap"
  Then I should see "Signed in as:"

  
# Login with invalid username and correct password  
Scenario: unable to login with valid username and incorrect password
  Given correct cl_user_email and incorrect password
  When I press "Sign in"
  Then I should see "Incorrect email and/or password."

