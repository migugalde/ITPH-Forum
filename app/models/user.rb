class User < ActiveRecord::Base 
    #attr_accessible :first_name, :last_name, :username, :password, :email, :privilege
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    
    has_many :posts
    has_many :comments
    
    has_attached_file :avatar, styles: { medium: '152x152#' }  
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
         
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