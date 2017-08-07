class CommunityController < ApplicationController
    before_action :authenticate_user!
    def index
        @user = User.where(admin: true)
        #@posts = Post.where(user_id: @user).order('created_at DESC').first(3)
        if !(Tag.find_by_name('announcement').nil?)
            @posts = Post.where(user_id: @user).tagged_with('announcement').order('created_at DESC')
        else
            @posts = []
        end
    end
end