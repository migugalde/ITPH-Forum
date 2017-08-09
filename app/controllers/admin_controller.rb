class AdminController < ApplicationController
    before_action :authenticate_admin!
    
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :admin, :approved, :username)
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
        @approved = @user.approved
        if @user.update_attributes!(user_params)
            if (@approved == false) && @user.approved
                flash[:notice] = "An email has been sent to #{@user.first_name} verfifying they have been approved!"
                UserMailer.welcome_email(@user).deliver_now
            elsif @approved && (@user.approved == false)
                 flash[:notice] = "An email has been sent to #{@user.first_name} verfifying their access has been revoked!"  
                 UserMailer.unapproved_email(@user).deliver_now
            end
            redirect_to admin_index_path
        end
    end
    
    # def destroy
    #     @user = User.find(params[:id])
    #     @user.destroy
    #     if @user.destroy
    #         redirect_to admin_index_path
    #     end
    # end
end