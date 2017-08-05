module UsersHelper
    def avatar_for(user, options = { size: 200 })
        size = options[:size]
    
        if user.avatar? 
            image_tag user.avatar.url(:thumb), width: size, class: 'avatar-image'
        else
            image_tag "default_image.png", width: size, class: 'avatar-image'
        end
    end
    
    def big_avatar_for(user, options = { size: 200 })
        size = options[:size]
    
        if user.avatar? 
            image_tag user.avatar.url(:thumb), width: size, class: 'larger-prof'
        else
            image_tag "default_image.png", width: size, class: 'larger-prof'
        end
    end
        
end