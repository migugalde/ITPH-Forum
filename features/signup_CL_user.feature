Feature: a way for Community Life members to sign up for access to the forum to become users
  
  As a Community Life Member
  I want to sign up for the ITPH Forum
  So that I can become a memeber of the online community forum
  
  Scenario: Community Life member signs up for the first time
    Given I go to the signup page
    When "Crunch Man" uses email "crunchmaster@mailinator.com", password "crunchmaster"
    # When he presses "Sign up"
    # Then he should be redirected to community page
    # Then he should see "You have signed up successfully but your account has not been approved by your administrator yet"
    
  Scenario: Community Life should not be able to sign up twice
    Given I go to the signup page
    When "Irene Li" uses email "ireneaili@berkeley.edu", password "hithere"
    # When he presses "Sign up"
    # Then he should see "You have signed up successfully but your account has not been approved by your administrator yet"
    # When he follows "Sign Up"
    # When "Irene Li" uses email "ireneaili@berkeley.edu", password "hithere"
    # When he presses "Sign up"
    # Then he should see "Email has already been taken"