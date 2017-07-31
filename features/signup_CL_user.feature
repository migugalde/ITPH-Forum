Feature: a way for Community Life members to sign up for access to the forum to become users
  
  As a Community Life Member
  I want to sign up for the ITPH Forum
  So that I can become a memeber of the online community forum
  
  Scenario: Community Life member signs up for the first time
    Given there is an admin
    Given I go to the signup page
    When I sign up
    When I login
    Then I should see "Your account has not been approved by the admin yet"
    
  Scenario: Community Life should not be able to sign up twice
    Given there is an admin
    Given I go to the signup page
    When I sign up
    Given I go to the signup page
    When I sign up
    Then I should see "Email has already been taken" 
    
    