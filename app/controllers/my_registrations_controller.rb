class MyRegistrationsController < Devise::RegistrationsController

    def create
        super
        if @user.persisted?
          @admin = User.where(admin: true).first
          UserMailer.user_created_email(@admin).deliver_now
        end
    end
    
end