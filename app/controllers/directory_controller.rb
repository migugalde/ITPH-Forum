class DirectoryController < ApplicationController
    def index
        @users = User.where(admin: false).order(:first_name)
    end
end