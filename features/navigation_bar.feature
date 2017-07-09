Feature: a functional navagation bar that navigates to the correct pages
  
    as a user I want to be able to click on different links 
    in the navigation bar and end up on the correct page
    
Scenario: click on home and routes to homepage
  When I press on "Home"
  Then I should be on "home" page
  Then I should not be on "profile" page
Scenario: click on forum and routes to forum
  When I press on "Forum"
  Then I should be on "forum" page
  Then I should not be on "home" page
Scenario: click on inbox and routes to inbox
  When I press on "Inbox"
  Then I should be on "inbox" page
  Then I should not be on "forum" page
Scenario: click on profile and routes to profile
  When I press on "Profile"
  Then I should be on "profile" page
  Then I should not be on "home" page
  
  