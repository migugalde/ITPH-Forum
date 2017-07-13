# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)  

  	 
users = [{:first_name => "Allowa", :last_name => "Obo", :username => "allowa", :password => "encrypted_ala", :email => "ala@gmail.com", :privilege => "member" },
         {:first_name => "John", :last_name => "James", :username => "james", :password => "encryped_jam", :email => "jam@gmail.com", :privilege => "admin" },
         {:first_name => "Helen", :last_name => "William", :username => "helen", :password => "encrypted_hel", :email => "hel@gmail.com", :privilege => "member" },
         {:first_name => "Mary", :last_name => "Tony", :username => "mary", :password => "encrypted_mar", :email => "mar@gmail.com", :privilege => "admin" },
         {:first_name => "Teddy", :last_name => "Manny", :username => "teddy", :password => "encrypted_ted", :email => "ted@yahoo.com", :privilege => "member" },
         {:first_name => "Jeremy", :last_name => "Olano", :username => "jeremy", :password => "encrypted_ola", :email => "ola@yahoo.com", :privilege => "member" },
         {:first_name => "Kim", :last_name => "Henry", :username => "kim", :password => "encrypted_kim", :email => "kim@berkeley.edu", :privilege => "admin" },
         {:first_name => "Miki", :last_name => "Korra", :username => "miki", :password => "encrypted_miki", :email => "miki@gmail.com", :privilege => "member" },
         {:first_name => "Lora", :last_name => "Moo", :username => "lora", :password => "encrypted_lora", :email => "lora@gmail.com", :privilege => "member" },
         {:first_name => "Jessica", :last_name => "Tom", :username => "jessica", :password => "encrypted_jessica", :email => "jess@yahoo.com", :privilege => "member" }]
         
users.each do |user| 
    User.create!(user) 
end
