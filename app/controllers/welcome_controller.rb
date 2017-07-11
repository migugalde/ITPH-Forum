class WelcomeController < ApplicationController
  
  def index 
  end 
  
  def show 
    @users = User.all 
  end
  
  def create 
    @user = User.new(params[:user])
    @user.password = params[:password]
    @user.save! 
  end 
  
  def login
    @user = User.find_by_email(params[:email])
    if @user.password == params[:password] 
      flash[:notice] = "You are logged in the Potter's Hand web page."
      give_token
    else
      flash[:warning] = "Incorrect username or address, please try again."
      redirect_to layouts_welcome_index_path
    end
  end 
  
  

end
