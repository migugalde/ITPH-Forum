class CommunityController < ApplicationController
    before_filter :authenticate_user!
    def index
        @user = User.where(admin: true)
        @posts = Post.where(user_id: @user).order('created_at DESC').last(3)
        p @posts
        @post3 = @posts[0]
        @post2 = @posts[1]
        @post1 = @posts[2]
    end
end