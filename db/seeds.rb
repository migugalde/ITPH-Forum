# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)  

  	 
users = [{:first_name => "Allowa", :last_name => "Obo", :username => "allowa", :password => "encrypted_ala", :email => "ala@gmail.com", :admin => false, :approved => false },
         {:first_name => "John", :last_name => "James", :username => "james", :password => "encryped_jam", :email => "jam@gmail.com", :admin => false, :approved => false },
         {:first_name => "Helen", :last_name => "William", :username => "helen", :password => "encrypted_hel", :email => "hel@gmail.com", :admin => false, :approved => true },
         {:first_name => "Mary", :last_name => "Tony", :username => "mary", :password => "encrypted_mar", :email => "mar@gmail.com", :admin => false, :approved => true },
         {:first_name => "Teddy", :last_name => "Manny", :username => "teddy", :password => "encrypted_ted", :email => "ted@yahoo.com", :admin => false, :approved => true },
         {:first_name => "Jeremy", :last_name => "Olano", :username => "jeremy", :password => "encrypted_ola", :email => "ola@yahoo.com", :admin => false, :approved => true },
         {:first_name => "Kim", :last_name => "Henry", :username => "kim", :password => "encrypted_kim", :email => "kim@berkeley.edu", :admin => false, :approved => true },
         {:first_name => "Miki", :last_name => "Korra", :username => "miki", :password => "encrypted_miki", :email => "miki@gmail.com", :admin => false, :approved => true },
         {:first_name => "Lora", :last_name => "Moo", :username => "lora", :password => "encrypted_lora", :email => "lora@gmail.com", :admin => false, :approved => true },
         {:first_name => "Jessica", :last_name => "Tom", :username => "jessica", :password => "encrypted_jessica", :email => "jess@yahoo.com", :admin => false, :approved => true},
         {:first_name => "Tester", :last_name => "Tester", :username => "tester", :password => "tester", :email => "tester@tester.com", :admin => true, :approved => true},
         {:first_name => "User", :last_name => "User", :username => "user", :password => "user_password", :email => "user@domain.com", :admin => false, :approved => true}]
         
users.each do |user| 
    User.create!(user) 
end

posts = [{:title => "Apple", :content => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eget tellus laoreet, 
                                             fringilla massa ac, aliquet turpis. Mauris pretium ligula non ex consequat ultrices. 
                                             Sed egestas magna nec ex pretium, nec congue odio ornare. Pellentesque volutpat mi sit 
                                             amet felis hendrerit volutpat et sit amet nibh. Integer elementum maximus feugiat. Mauris 
                                             tempor turpis non magna faucibus ultrices. Nam congue nisl eget sodales sagittis. Nunc
                                             ultrices, nulla eu semper consequat, dolor tortor placerat urna, id accumsan justo leo ut
                                             est. In lacinia, dui a tristique eleifend, tellus nisl cursus augue, nec volutpat turpis 
                                             nibh vel dolor. Ut arcu erat, euismod ac tortor sed, cursus facilisis odio. Maecenas 
                                             egestas sodales dolor, sed hendrerit sapien malesuada in. Donec et dignissim eros. 
                                             In hac habitasse platea dictumst. Nulla a laoreet dolor. Sed faucibus eget dolor 
                                             vel semper.", 
                                             :description => "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, 
                                             consectetur, adipisci velit...", :public => "true", :user_id => "11"}, 
         {:title => "Banana", :content => "welcome!", :description => "bananas are berries", :public => "false", :user_id => "11"}, 
         {:title => "Carrot", :content => "hi there", :description => "carrots are roots", :public => "false", :user_id => "12"}, 
         {:title => "Dole", :content => "what's up?!", :description => "Dole is a fruit brand", :public => "false", :user_id => "12"}, 
         {:title => "Eggplant", :content => "helloo", :description => "Eggplants are squashes", :public => "true", :user_id => "12"}, 
         {:title => "Favobean", :content => "hey", :description => "Are favobeans even real?", :public => "true", :user_id => "12"}, 
         {:title => "Grapes", :content => "Nice to meet you", :description => "Grapes are fruits", :public => "false", :user_id => "12"}, 
         ]
         
posts.each do |post|
         Post.create!(post)
end