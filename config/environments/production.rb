Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # The test environment is used exclusively to run your application's
  # test suite. You never need to work with it otherwise. Remember that
  # your test database is "scratch space" for the test suite and is wiped
  # and recreated between test runs. Don't rely on the data there!
  config.cache_classes = true

  # Do not eager load code on boot. This avoids loading your whole application
  # just for the purpose of running a single test. If you are using a tool that
  # preloads Rails for running tests, you may have to set it to true.
  config.eager_load = false

  # Configure static file server for tests with Cache-Control for performance.
  config.serve_static_files   = true
  config.static_cache_control = 'public, max-age=3600'

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Raise exceptions instead of rendering exception templates.
  config.action_dispatch.show_exceptions = false

  # Disable request forgery protection in test environment.
  config.action_controller.allow_forgery_protection = false

  # Tell Action Mailer not to deliver emails to the real world.
  # The :test delivery method accumulates sent emails in the
  # ActionMailer::Base.deliveries array.
  
  # Randomize the order test cases are executed.
  config.active_support.test_order = :random

  # Print deprecation notices to the stderr.
  config.active_support.deprecation = :stderr

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true
  
  
  config.web_socket_server_url = "wss://nameless-temple-25833.herokuapp.com/cable" 
  
  config.action_cable.allowed_request_origins = ['https://nameless-temple-25833.herokuapp.com', 'http://nameless-temple-25833.herokuapp.com']
  
  config.action_mailer.raise_delivery_errors = true
  
  config.action_mailer.default_url_options = { host: 'whispering-peak-99132.herokuapp.com' }
  
  config.action_mailer.perform_deliveries = true

  config.action_mailer.default_options = {from: 'admin@itphcommunity.com'}
  
  config.action_mailer.delivery_method = :mailgun
  config.action_mailer.mailgun_settings = {
		api_key: 'key-e796c3d50e04aaaa1c1a96d5bba9a427',
		domain: 'sandbox7d55082f254c4626bd71d56bbe0dd9a7.mailgun.org'
  }
end