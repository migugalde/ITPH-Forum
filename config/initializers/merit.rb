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
  level: "1",
  description: "badge1.png"
)

Merit::Badge.create!(
  id: 2,
  name: 'Intermediate Poster',
  level: "82",
  description: "badge1.png"
)

Merit::Badge.create!(
  id: 3,
  name: 'Experienced Poster',
  level: "164",
  description: "badge1.png"
)

Merit::Badge.create!(
  id: 4,
  name: 'Pro Poster',
  level: "246",
  description: "badge1.png"
)

Merit::Badge.create!(
  id: 5,
  name: 'Ultimate Poster',
  level: "328",
  description: "badge1.png"
)


Merit::Badge.create!(
  id: 6,
  name: "Novice Commenter",
  level: "1",
  description: "badge2.png"
  )

Merit::Badge.create!(
  id: 7,
  name: "Intermediate Commenter",
  level: "82",
  description: "badge2.png"
  )

Merit::Badge.create!(
  id: 8,
  name: "Experienced Commenter",
  level: "164",
  description: "badge2.png"
  )

Merit::Badge.create!(
  id: 9,
  name: "Pro Commenter",
  level: "246",
  description: "badge2.png"
  )

Merit::Badge.create!(
  id: 10,
  name: "Ultimate Commenter",
  level: "328",
  description: "badge2.png"
)

# Create application badges (uses https://github.com/norman/ambry)
# badge_id = 0
# [{
#   id: (badge_id = badge_id+1),
#   name: 'just-registered'
# }, {
#   id: (badge_id = badge_id+1),
#   name: 'best-unicorn',
#   custom_fields: { category: 'fantasy' }
# }].each do |attrs|
#   Merit::Badge.create! attrs
# end
