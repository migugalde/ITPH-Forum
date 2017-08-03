class ProfileController < ApplicationController
    before_action :authenticate_user!
    # before_action :check_authorization, only: [:edit, :update]
    before_action :set_user
    
    def show
        # @user = User.find_by(id: params[:id])
        @name = "#{User.find(params[:id]).first_name} #{User.find(params[:id]).last_name}"
        @goal = @user.goals.last
        p @goal
    end
    
    def edit
    end
    
    def update
        if @user.update(user_params)
            redirect_to profile_path
        else
            flash.now[:alert] = "Something went wrong. Please try again!"
            render :edit
        end
    end
    
    def new
        # @user = User.find_by(id: params[:id])
        #@name = "#{User.find(params[:id]).first_name.strip}"
        @goal = Goal.new
    end
    
    def create
        # @user = User.find_by(id: params[:id])
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
    
    # def check_authorization
    #     unless current_user.id == params[:id].to_i
    #         redirect_to root_url
    #     end
    # end
    
    def set_user
        @user = User.find_by(id: params[:id])
    end
    
    def user_params
        params.require(:user).permit(:username)
    end
end