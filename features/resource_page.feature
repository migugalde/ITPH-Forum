Feature: able to upload files and images
  
  As a community life user and an Admin I shall be able
  to upload files and images.
  
  # Background: I am able to access resource page(s)
  #   Given that I have a user with a valid credentials placed in the correct forms:
  #   When I go to the resource page
  #   Then I shall see "Name"
  #   And I shall see "Download Link"
  #   When I follow "New File"
  #   Then I go to the New resource page
  #   And I shall see "Description"
  #   And I shall see "Attachment"
    
    Scenario: I must fill the description space before saving the file

      # When I fill in "desc" with "something"
     Given correct admin email and password
     When I proceed to the resource page
     Then I shall see "Name"
     And I shall see "Download Link"
     When I follow the link "upload"
     Then I proceed to the New resource page
     And I shall see "Description"
     And I shall see "Attachment"
     When I press the button "Save"
     Then I shall see "Description cannot be blank"

    
    # Scenario: I am able to upload files on the resource page(s)
    #   When I fill in "desc" with "something"
    #   When I press "Save" 
    #   Then I shall see "The file a has been uploaded"
    
  Scenario: As a non admin user, I don't have access to delete others files, except mine
    Given correct non admin email and password
    When I proceed to the resource page
    Then I shall see "Name"
    And I shall see "Download Link"
    Then I shall not see "upload"
    Then I shall not see "Delete"
    

  
  Scenario: As an admin I have access to delete the uploaded files
    Given correct admin email and password
    When I proceed to the resource page
    Then I shall see "Name"
    And I shall see "Download Link"
    When I follow the link "upload"
    Then I am on the New resource page
    Then I proceed to the New resource page
    When I fill in the "desc" with "something"
    When I upload a file
    When I press the button "Save"
    Then I am on the resource page
    Then I shall see "something"
    When I follow the link "Download File"
    Then I proceed to the resource page
    When I press the button "Delete"
    Then I proceed to the resource page
    Then I shall not see "something"

    
    # When I go to the admin page
    # Then I follow "linkd"
    # Then I shall see "Signed out successfully"
    
    # Then I shall see "Admin?"
    # Then I follow "linkd"
    # When I go to the resource page
    # Then I shall see "Name"
    # And I shall see "Download Link"
    # Then I follow "New File"
    # When I fill in "desc" with "something"
    
    
    #When I press "delta" 
    #Then I shall see "The file a has been deleted."
    
    Scenario: As an admin I have access to delete the uploaded files
      Given correct admin email and password
      When I proceed to the resource page
      Then I shall see "Name"
      And I shall see "Download Link"
      When I follow the link "upload"
      Then I am on the New resource page
      Then I proceed to the New resource page
      When I fill in the "desc" with "something"
      When I upload a file
      When I press the button "Save"
      Then I am on the resource page
      Then I shall see "something"
      When I follow the link "Download File"
      

  
      
    
    
    
    
  

    
    
  
