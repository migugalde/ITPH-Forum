<a href="https://codeclimate.com/github/migugalde/ITPH-Forum/"><img src="https://codeclimate.com/github/migugalde/ITPH-Forum/badges/gpa.svg" /></a> <a href="https://codeclimate.com/github/migugalde/ITPH-Forum/coverage"><img src="https://codeclimate.com/github/migugalde/ITPH-Forum/coverage.svg"/></a> <a href="https://travis-ci.org/migugalde/ITPH-Forum"> <img src="https://travis-ci.org/migugalde/ITPH-Forum.svg?branch=master" /></a> 

In The Potter's Hands is a non-profit counseling center based in Pleasanton, California. Our challenge was to meet their need of having an online community forum where the organization community can interact and support eachother, while also maintaining a form of authorization and moderation.

Client Website:
www.itph.org 

Pivotal Tracker:
https://www.pivotaltracker.com/n/projects/2071063

Deployment on Heroku: https://whispering-peak-99132.herokuapp.com/

    Test Accounts 
    
    Admin username: tester@tester.com,  Admin password: tester
    
    User username: user@domain.com,  User password: user_password
    
Setup details:

Envirmental - 
    Assuming you are in c9:

    Step 1) cd /usr/local/rvm/gems/ruby-2.3.0/gems/merit-3.0.0/lib/merit
    Step 2) navigarte to model_additions.rb 
    Step 3) edit line 10 from 

        belongs_to :sash, class_name: 'Merit::Sash', inverse_of: nil

        to 

        belongs_to :sash, class_name: 'Merit::Sash', inverse_of: nil, optional: true

Heroku (deploying):

If you are deploying on your own Heroku please do the following - 

1) In order to support real time comments and posts you will need to do steps 2-5 in the "Deploying our Application to Heroku" of this manual :

    https://blog.heroku.com/real_time_rails_implementing_websockets_in_rails_5_with_action_cable#deploying-our-application-to-heroku

2) In order to support media storage (profile pics for example), connect to heroku repository and do the following with your AWS information in the quoted fields:

    heroku config:set S3_BUCKET_NAME="your bucket name"
    
    heroku config:set AWS_ACCESS_KEY_ID="your access key id"
    
    heroku config:set AWS_SECRET_ACCESS_KEY="your secret access key"
