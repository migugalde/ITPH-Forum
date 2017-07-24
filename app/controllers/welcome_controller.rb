class WelcomeController < ApplicationController
  
  def index
    if current_user
      redirect_to community_index_path
    end
  end 
end
