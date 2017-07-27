class CommunityController < ApplicationController
    before_action :authenticate_user!
    def index
        @user = User.where(admin: true)
        @posts = Post.where(user_id: @user)
    end
end