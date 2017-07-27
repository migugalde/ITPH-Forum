Feature: able to upload files and images
  
  As a community life user and an Admin I should be able
  to upload files and images.
  
Scenario: I am trying to upload an images
  When I press upload images
  Then I should see the image on the next page
  
Scenario: I am trying to upload a file
   When I press upload file
   Then I should see the description name on the next page
   Then when I click download file the file should show up 