class User < ActiveRecord::Base 
    #attr_accessible :first_name, :last_name, :username, :password, :email, :privilege
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end 