class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  def after_sign_in_path_for(*)
    community_index_path
  end
  
  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to root_path, :alert => 'You must be logged in to access this page'
      ## if you want render 404 page
      ## render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
    end
  end

  def authenticate_admin!
    if user_signed_in? && current_user.admin
      authenticate_user!
    else
      redirect_to community_index_path, :alert => 'You do not have the rights to access this page. Please contact the admin.'
    end
  end
 
  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [[:first_name], [:last_name]])
  # end
  def configure_permitted_parameters
    registration_params = [:name , :account,:first_name, :last_name]

    if params[:action] == 'create'
      devise_parameter_sanitizer.for(:sign_up) do
        |u| u.permit(registration_params)
      end
    end
  end
  
end
