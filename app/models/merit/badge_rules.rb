# Be sure to restart your server when you modify this file.
#
# +grant_on+ accepts:
# * Nothing (always grants)
# * A block which evaluates to boolean (recieves the object as parameter)
# * A block with a hash composed of methods to run on the target object with
#   expected values (+votes: 5+ for instance).
#
# +grant_on+ can have a +:to+ method name, which called over the target object
# should retrieve the object to badge (could be +:user+, +:self+, +:follower+,
# etc). If it's not defined merit will apply the badge to the user who
# triggered the action (:action_user by default). If it's :itself, it badges
# the created object (new user for instance).
#
# The :temporary option indicates that if the condition doesn't hold but the
# badge is granted, then it's removed. It's false by default (badges are kept
# forever).

module Merit
  class BadgeRules
    include Merit::BadgeRulesMethods

    def initialize
        

        grant_on 'comments#create', badge: "Novice Commenter", temporary: true do |comment|
            @allComments = Comment.where(user_id: comment.user_id)
            countComments = @allComments.count
            countComments > 0 and countComments < 5
        end

        grant_on 'comments#create', badge: "Intermediate Commenter", temporary: true do |comment|
            @allComments = Comment.where(user_id: comment.user_id)
            countComments = @allComments.count
            countComments > 4 and countComments < 15
        end

        grant_on 'comments#create', badge: "Experienced Commenter", temporary: true do |comment|
            @allComments = Comment.where(user_id: comment.user_id)
            countComments = @allComments.count
            countComments > 14 and countComments < 25
        end

        grant_on 'comments#create', badge: "Pro Commenter", temporary: true do |comment|
            @allComments = Comment.where(user_id: comment.user_id)
            countComments = @allComments.count
            countComments > 24 and countComments < 50
        end

        grant_on 'comments#create', badge: "Ultimate Commenter", temporary: true do |comment|
            @allComments = Comment.where(user_id: comment.user_id)
            countComments = @allComments.count
            countComments > 49
        end



        # grant_on 'comments#create', badge: "Novice Commenter", to: :current_user, temporary: true do |comment|
        #     @allComments = Comment.where(user_id: comment.user_id)
        #     countComments = @allComments.count
        #     countComments > 0 and countComments < 5
        # end

        # grant_on 'comments#create', badge: "Intermediate Commenter", to: :current_user, temporary: true do |comment|
        #     @allComments = Comment.where(user_id: comment.user_id)
        #     countComments = @allComments.count
        #     countComments > 4 and countComments < 15
        # end

        # grant_on 'comments#create', badge: "Experienced Commenter", to: :current_user, temporary: true do |comment|
        #     @allComments = Comment.where(user_id: comment.user_id)
        #     countComments = @allComments.count
        #     countComments > 14 and countComments < 25
        # end

        # grant_on 'comments#create', badge: "Pro Commenter", to: :current_user, temporary: true do |comment|
        #     @allComments = Comment.where(user_id: comment.user_id)
        #     countComments = @allComments.count
        #     countComments > 24 and countComments < 50
        # end

        # grant_on 'comments#create', badge: "Ultimate Commenter", to: :current_user, temporary: true do |comment|
        #     @allComments = Comment.where(user_id: comment.user_id)
        #     countComments = @allComments.count
        #     countComments > 49
        # end




  

      # If it creates user, grant badge
      # Should be "current_user" after registration for badge to be granted.
      # Find badge by badge_id, badge_id takes presidence over badge
      # grant_on 'users#create', badge_id: 7, badge: 'just-registered', to: :itself

      # If it has 10 comments, grant commenter-10 badge
      # grant_on 'comments#create', badge: 'commenter', level: 10 do |comment|
      #   comment.user.comments.count == 10
      # end
      



      # If it has 5 votes, grant relevant-commenter badge
      # grant_on 'comments#vote', badge: 'relevant-commenter',
      #   to: :user do |comment|
      #
      #   comment.votes.count == 5
      # end

      # Changes his name by one wider than 4 chars (arbitrary ruby code case)
      # grant_on 'registrations#update', badge: 'autobiographer',
      #   temporary: true, model_name: 'User' do |user|
      #
      #   user.name.length > 4
      # end
    end
  end
end
