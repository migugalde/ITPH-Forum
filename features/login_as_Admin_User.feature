Feature: As an Admin, I need to log in 
Scenario: Able to log in with correct username and password 
  Given correct Admin email and password 
  When I click login 
  Then I should see Admin version homepage 
Scenario: 
  Given incorrect Admin email or password 
  When I click login 
  Then I should get error warning
   
  