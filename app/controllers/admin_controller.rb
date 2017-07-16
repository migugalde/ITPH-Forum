class AdminController < ApplicationController
    before_filter :authenticate_admin!
    
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :admin, :approved)
    end
    
    def index
        @users = User.all
    end
    
    def home
    end
    
    def edit
        @user = User.find(params[:id])
    end
    
    def update
        @user = User.find(params[:id])
        @user.update_attributes!(user_params)
        redirect_to admin_index_path
    end
end