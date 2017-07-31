Feature: able to upload files and images
  
  As a community life user and an Admin I should be able
  to upload files and images.
  
  # Background: I am able to access resource page(s)
  #   Given that I have a user with a valid credentials placed in the correct forms:
  #   When I go to the resource page
  #   Then I should see "Name"
  #   And I should see "Download Link"
  #   When I follow "New File"
  #   Then I go to the New resource page
  #   And I should see "Description"
  #   And I should see "Attachment"
    
    Scenario: I must fill the description space before saving the file

      # When I fill in "desc" with "something"
      Given that I have a user with a valid credentials placed in the correct forms:
     When I go to the resource page
     Then I should see "Name"
     And I should see "Download Link"
     When I follow "New File"
     Then I go to the New resource page
     And I should see "Description"
     And I should see "Attachment"
     When I press "Save"
     Then I should see "Description cannot be blank"

    
    # Scenario: I am able to upload files on the resource page(s)
    #   When I fill in "desc" with "something"
    #   When I press "Save" 
    #   Then I should see "The file a has been uploaded"
    
  Scenario: As a non admin user, I don't have access to delete others files, except mine
    Given that I have a user with a valid credentials placed in the correct forms:
    When I go to the resource page
    Then I should see "Name"
    And I should see "Download Link"
    When I follow "New File"
    Then I go to the New resource page
    And I should see "Description"
    And I should see "Attachment"
    When I go to the resource page
    Then I should not see "Delete"
    Then I should see "Name"
    And I should see "Download Link"

  
  Scenario: As an admin I have access to delete the uploaded files
    # When I go to the admin page
    # Then I follow "linkd"
    # Then I should see "Signed out successfully"
    Given correct admin email and password
    # Then I should see "Admin?"
    # Then I follow "linkd"
    When I go to the resource page
    Then I should see "Name"
    And I should see "Download Link"
    Then I follow "New File"
    When I fill in "desc" with "something"
    
    
    #When I press "delta" 
    #Then I should see "The file a has been deleted."

    
  
    
    
    
  

    
    
  
