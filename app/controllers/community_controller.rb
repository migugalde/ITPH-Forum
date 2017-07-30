class CommunityController < ApplicationController
    before_filter :authenticate_user!
    def index
        @user = User.where(admin: true)
        @posts = Post.where(user_id: @user).order('created_at DESC').last(3)
        p @posts
        @post3 = @posts[0]
        @post3_content = view_context.raw(@post3.content)
        @post2 = @posts[1]
        @post2_content = view_context.raw(@post2.content)
        @post1 = @posts[2]
        @post1_content = view_context.raw(@post1.content)
    end
end