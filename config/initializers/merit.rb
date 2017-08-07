# Use this hook to configure merit parameters
Merit.setup do |config|
  # Check rules on each request or in background
  config.checks_on_each_request = true

  # Define ORM. Could be :active_record (default) and :mongoid
  config.orm = :active_record

  # Add application observers to get notifications when reputation changes.
  # config.add_observer 'MyObserverClassName'

  # Define :user_model_name. This model will be used to grand badge if no
  # `:to` option is given. Default is 'User'.
  config.user_model_name = 'User'


  # Define :current_user_method. Similar to previous option. It will be used
  # to retrieve :user_model_name object if no `:to` option is given. Default
  # is "current_#{user_model_name.downcase}".
  config.current_user_method = 'current_user'
end

Merit::Badge.create!(
  id: 1,
  name: 'Novice Poster',
  # name: 'badge-icon.png',
  description: "You have written a post!"
  # custom_fields: { url: "badge-icon.png" }
)

Merit::Badge.create!(
  id: 2,
  name: 'Intermediate Poster',
  # name: 'Intermediate Poster: You have created 2 or more posts!',
  # name: 'badge-icon.png',
  level: "90",
  description: "badge-icon.png",
  custom_fields: { url: "badge-icon.png" }

)

Merit::Badge.create!(
  id: 3,
  name: 'Experienced Poster',
  description: "You have created 5 or more posts!"
)

Merit::Badge.create!(
  id: 4,
  name: 'Pro Poster',
  description: "You have created 10 or more posts!"
)

Merit::Badge.create!(
  id: 5,
  name: 'Ultimate Poster',
  description: "You have created 25 or more posts!"
)

Merit::Badge.create!(
  id: 6,
  name: "Novice Commenter",
  description: "You have commented more than Once!"
  )

Merit::Badge.create!(
  id: 7,
  name: "Intermediate Commenter",
  description: "You have commented more than 5 times"
  )

Merit::Badge.create!(
  id: 8,
  name: "Experienced Commenter",
  description: "You have commented more than 15 times"
  )

Merit::Badge.create!(
  id: 9,
  name: "Pro Commenter",
  description: "You have commented more than 25 times"
  )

Merit::Badge.create!(
  id: 10,
  name: "Ultimate Commenter",
  description: "You have commented more than 50 times"
  )
