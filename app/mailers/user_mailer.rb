class UserMailer < ApplicationMailer
    default from: 'notifications@example.com'
 
    def welcome_email(user)
        @user = user
        @url  = root_path
        mail(to: @user.email, subject: 'Welcome to the ITPH Community!')
    end
    
    def unapproved_email(user)
        @user = user
        mail(to: @user.email, subject: 'An ITPH admin has revoked your access.')
    end
end
