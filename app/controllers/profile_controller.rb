class ProfileController < ApplicationController
    before_action :authenticate_user!
    
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :admin, :approved, :avatar)
    end
    
    def show
        @user = User.find(params[:id])
        @name = "#{User.find(params[:id]).first_name} #{User.find(params[:id]).last_name}"
        @goal = @user.goals.last
        p @goal
    end
    
    def new
        @user = User.find(params[:id])
        @goal = Goal.new
    end
    
    def create
        @user = User.find(params[:id])
        # @goal = Goal.new(goal: params[:goal])
        @goal = current_user.goals.build(goal_params)
        @goal.save
        if @goal.save
            redirect_to profile_path(current_user)
        end
    end
    
    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        redirect_to profile_path(current_user)
    end
    
    private
    
    def goal_params
        params.require(:goal).permit(:title, :step1, :step2, :step3, :step4, :step5, :step6, :step7, :step8, :step9, :step10)
    end
end