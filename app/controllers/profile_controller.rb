class ProfileController < ApplicationController
    before_filter :authenticate_user!
    def show
        @name = "#{User.find(params[:id]).first_name} #{User.find(params[:id]).last_name}"
    end
end