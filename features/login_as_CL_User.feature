Feature: As a CL user, I need to log in 
Scenario: Able to log in with correct username and password 
  Given correct CL user email and password 
  When I click again 
  Then I should see CL user version homepage 
Scenario: 
  Given incorrect CL user email or password 
  When I click login 
  Then I should get error warning 