Feature: a system for Community Life Members to organize and find posts on specific topics
  
  As a user
  I can list and organize my post by tags before posting
  so that I can see what tags already exist.
  
  Scenario: A user can associate their post with a tag
    Given there is an admin
    Given I am an admin
    Given I go to the new post page
    Then I should see "public"
    Given I fill in a new post
    Given I fill out tags with "#CS"
    When I click the Create Post button
    Then I should see the "#CS" tag

  Scenario: A user can search for existing tags
    Given I am on the Posts page
    When I click on the tag search bar
    And type "#CS"
    Then I should see "#CS" in the drop down

    
  Scenario: A user searches by title
    Given I am on the Posts page
    When I click on the tag search bar
    And type "apple"
    Then I should see "apple" in the drop down
    
  Scenario: An admin tags a post as announcements
    Given I am logged in as an admin
    When I create a post
    And tag it as admin
    Then I should see it on the homepage
