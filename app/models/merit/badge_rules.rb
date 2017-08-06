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
      
        grant_on 'posts#create', badge: 'Novice Poster', temporary: true do |post|
        @allPosts = Post.where(user_id: post.user_id)
        @allPosts.count >= 1 && @allPosts.count < 2
        end

        grant_on 'posts#create', badge: 'Intermediate Poster', temporary: true do |post|
        @allPosts = Post.where(user_id: post.user_id)
        @allPosts.count >= 2 && @allPosts.count < 5
        end

        grant_on 'posts#create', badge: 'Experienced Poster', temporary: true do |post|
        @allPosts = Post.where(user_id: post.user_id)
        @allPosts.count >= 5 && @allPosts.count < 10
        end

        grant_on 'posts#create', badge: 'Pro Poster', temporary: true do |post|
        @allPosts = Post.where(user_id: post.user_id)
        @allPosts.count >= 10 && @allPosts.count < 25
        end

        grant_on 'posts#create', badge: 'Ultimate Poster', temporary: true do |post|
        @allPosts = Post.where(user_id: post.user_id)
        @allPosts.count >= 25
        end

    end
  end
end