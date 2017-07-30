Feature: able to login as an Admin
  
  As a community life user I should be able
  to put my email and password and login
  I should be able to visit the admin page
  and edit users and delete users
  
Background: users in the database
  
# Login with invalid username
Scenario: unable to login with invalid username
  Given invalid email and password
  When I press "button-cap"
  Then I should see "Invalid email or password."
  
Scenario: able to login with valid username and correct password
  Given there is an admin
  Given I am an admin
  Then I should see "welcome admin"
  When I go to the admin index page
  Then I should not see "You do not have the rights to access this page. Please contact the admin."
  
Scenario: after login I can go and view the table of all users and edit them
  Given there is an admin
  Given there is an unapproved user
  Given I am an admin
  When I go to the admin edit page for "user@domain.com"
  When I change the approval status to true
  When I press "Update"
  Then I should see "An email has been sent to User verfifying they have been approved!"
  When I go to the admin edit page for "user@domain.com"
  When I change the approval status to false
  When I press "Update"
  Then I should see "An email has been sent to User verfifying their access has been revoked!"
  
Scenario: after login I can go and delete a user
  Given there is an admin
  Given there is an unapproved user
  Given I am an admin
  When I go to the admin edit page for "user@domain.com"
  When I click "Delete User"
  Then I should not see "User"

