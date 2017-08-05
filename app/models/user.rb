class User < ActiveRecord::Base 
    #attr_accessible :first_name, :last_name, :username, :password, :email, :privilege
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    
    has_many :posts
    has_many :comments
    has_many :goals
    
    validates :username, presence: true
    mount_uploader :avatar, AvatarUploader
         
    def active_for_authentication? 
        super && approved? 
    end 
  
    def inactive_message 
        if !approved? 
          :not_approved 
        else 
          super # Use whatever other message 
        end 
    end
end 