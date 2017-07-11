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

When /^(?:|I )press ([^"]*)$/ do |button|
    # pending
end

Then /^(?:|I )should not be on ([^"]*)$/ do |page_id|
    # pending
end

Then /^(?:|I )should be on ([^"]*)$ page/ do |page_id|
    # pending
end

