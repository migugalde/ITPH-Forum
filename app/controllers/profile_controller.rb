class ProfileController < ApplicationController
    before_filter :authenticate_user!
    def show
        @user = User.find_by(id: params[:id])
        @name = "#{User.find(params[:id]).first_name} #{User.find(params[:id]).last_name}"
    end
    def goal
        @user = User.find_by(id: params[:id])
        @name = "#{User.find(params[:id]).first_name.strip}"
        @goal = Goal.new
    end
    def new
        @goal = Goal.new
    end
end