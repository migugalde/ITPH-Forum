class UserMailer < ApplicationMailer
    default from: 'no-reply@itph.com'
 
    def welcome_email(user)
        @user = user
        @url  = root_url
        mail(to: @user.email, subject: 'Welcome to the ITPH Community!')
    end
    
    def unapproved_email(user)
        @user = user
        mail(to: @user.email, subject: 'An ITPH admin has revoked your access.')
    end
    
    def user_created_email(user)
        @admin = user
        @url = root_url
        mail(to: @admin.email, subject: 'A New Member Has Signed Up')
    end
end
