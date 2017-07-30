Feature: a system for Community Life Members to organize and find posts on specific topics
  
  As a user
  I can list and organize my post by tags before posting
  so that I can see what tags already exist.
  
  Scenario: A user can associate their post with a tag
    Given I am on the new post page
    Given I have filled out title
    Given I have filled out content
    Given I fill out tags with "#CS"
    When I click the Create Post button
    Then I should see the "#CS" tag

  Scenario: A user can search for existing tags
    Given I am on the Posts page
    When I click on the tag search bar
    And type "#CS"
    Then I should see "#CS" in the drop down