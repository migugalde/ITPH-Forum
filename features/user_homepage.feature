# Feature: a homepage for the user after they sign in
  
#   As a Community Life member
#   After I log in
#   I want to be able to see the admin announcements
#   So I can be caught up with recent events
  
#   Background:
#     Given I am logged in
#     When I follow "home"
#     Then I should see "Admin Announcement"
    
#     Scenario: Community Life member should be able to expand and shrink the announcement
#         When I click "Admin Announcement"
#         Then I should see "Dear Community"
#         When I click "Admin Announcement"
#         Then I should not see "Dear Community"
#         Then I should see "read"
        
#     Scenario: Community Life member should be able to dismiss read announcements
#         Then I should see "read"
#         When I click "dismiss"
#         Then I should not see "Admin Announcement"
        
#     Scenario: Community Life member should be able to follow the announcement to the actual post on the forum
#         When I click "Admin Announcement"
#         Then I should see "Dear Community"
#         Then I should see "Go to Forum"
#         When I click "Go to Forum"
#         Then I should see "Forum"
        