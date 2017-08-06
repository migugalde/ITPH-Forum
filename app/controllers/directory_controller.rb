class DirectoryController < ApplicationController
    def index
        @users = User.all.order(:first_name)
    end
end