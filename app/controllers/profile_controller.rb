class ProfileController < ApplicationController
    before_action :authenticate_user!
    def show
        @user = User.find_by(id: params[:id])
        @name = "#{User.find(params[:id]).first_name} #{User.find(params[:id]).last_name}"
        @goal = @user.goals.last
        p @goal
    end
    
    def new
        @user = User.find_by(id: params[:id])
        #@name = "#{User.find(params[:id]).first_name.strip}"
        @goal = Goal.new
    end
    
    def create
        @user = User.find_by(id: params[:id])
        # @goal = Goal.new(goal: params[:goal])
        @goal = current_user.goals.build(goal_params)
        @goal.save
        if @goal.save
            redirect_to profile_path(current_user)
        end
    end
    
    private
    
    def goal_params
        params.require(:goal).permit(:title, :step1, :step2, :step3, :step4, :step5, :step6, :step7, :step8, :step9, :step10)
    end
end