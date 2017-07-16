class AdminController < ApplicationController
    before_filter :authenticate_admin!
    
    def authorize_users
        @unauthorized_users = User.all.where(:approved => false)
    end
    
    def user_list
        @users = User.all
    end
    
    def index
    end
end