Feature: Users will be awarded a badge upon completing their set goals

Scenario: Given that the user accomplishes their first goal
Given that the user finishes their first goal
Then the user will have a badge appear on their profile


Scenario: Admin is able to see who was accomplished their goals
Given that atleast one user has won a badge
When they visit badges page
Then they will see a new row


Scenario: Admin revokes a badge
Given that a user lies about their accomplishment
Then the admin will revoke the badge