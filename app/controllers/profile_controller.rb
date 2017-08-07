class ProfileController < ApplicationController
    before_action :authenticate_user!
    
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :admin, :approved, :avatar)
    end
    
    def show
        @user = User.find(params[:id])
        @name = "#{User.find(params[:id]).first_name} #{User.find(params[:id]).last_name}"
        @goal = @user.goals.last
        @goals = @user.goals
        # p @goal
    end
    
    def celebrate
        @user = User.find(params[:id])
        @goal = @user.goals.last
        @goals = @user.goals
        @name = "#{User.find(params[:id]).first_name} #{User.find(params[:id]).last_name}"
    end
    
    def new
        @user = User.find_by(id: params[:id])
        @goal = Goal.new
    end
    
    def create
        @user = User.find_by(id: params[:id])
        # @goal = Goal.new(goal: params[:goal])
        @goal = current_user.goals.build(goal_params)
        @goal.graduation = false;
        @goal.save
        if @goal.save
            redirect_to profile_path(current_user)
        end
    end
    
    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        puts "****** PICTURE ********"
        redirect_to profile_path(current_user)
    end
    
    def flop
        @index = params[:index].to_i
        @user = User.find_by(id: params[:profile_id])
        @goals = @user.goals
        @goal = @user.goals.first
        @goals.each.with_index do |g, i|
            if @index == i
                @goal = g
                @goal.graduation = true
                @goal.save
            end
        end
                
        redirect_to profile_celebrate_path(current_user)
    end
    
    private
    
    def goal_params
        params.require(:goal).permit(:title, :step1, :step2, :step3, :step4, :step5, :step6, :step7, :step8, :step9, :step10)
    end
end