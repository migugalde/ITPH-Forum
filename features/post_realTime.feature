Feature: Users will get real-time posts updates.
	Users will get real-time updates when other
	Users create new posts. Users won't have to
	press refresh in order to see new content.

Scenario: 1st user publishes a post and the 2nd sees an update.
	Given that two different users are logged in
	Given that user_one is ready to submit a new post
	When user_one press "submit"
	Then user_two should see "this is the new post"
	