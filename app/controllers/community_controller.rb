class CommunityController < ApplicationController
    before_action :authenticate_user!
    def index
        @user = User.where(admin: true)
        #@posts = Post.where(user_id: @user).order('created_at DESC').first(3)
        @posts = Post.where(user_id: @user).where(announcement: true).order('created_at DESC')
    end
end