require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))

module WithinHelpers
  def with_scope(locator)
    locator ? within(*selector_for(locator)) { yield } : yield
  end
end
World(WithinHelpers)

Given(/^invalid cl_user_email and a password$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^correct cl_user_email and password$/) do
  pending # Write code here that turns the phrase above into concrete actions
end