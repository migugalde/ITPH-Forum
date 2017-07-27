class ProfilesController < ApplicationController
  before_filter :authenticate_user!
    def show
        @user = User.find_by(id: params[:id])
        @name = "#{User.find(params[:id]).first_name} #{User.find(params[:id]).last_name}"
        # @posts = User.find_by(id: params[:id]).posts.order('created_at DESC')
    end
    
    def edit  
      @user = User.find_by(id: params[:id])
    end  
    
    def update 
      @user = User.find_by(id: params[:id])
      if @user.update(profile_params)
        flash[:success] = 'Your profile has been updated.'
        redirect_to profile_path(@user.id)
      else
        @user.errors.full_messages
        flash[:error] = @user.errors.full_messages
        render :edit
      end
    end  
    
    private

    def profile_params  
      params.require(:user).permit(:avatar, :bio)
    end  
    
end
