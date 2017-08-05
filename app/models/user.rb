class User < ActiveRecord::Base 
    #attr_accessible :first_name, :last_name, :username, :password, :email, :privilege
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
    
    has_many :posts
    has_many :comments
    has_many :goals
         
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