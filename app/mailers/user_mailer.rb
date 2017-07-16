class UserMailer < ApplicationMailer
    default from: 'notifications@example.com'
 
    def welcome_email(user)
        @user = user
        @url  = show_path
        mail(to: @user.email, subject: 'Welcome to the ITPH Community!')
    end
end
