# TL;DR: YOU SHOULD DELETE THIS FILE
#
# This file is used by web_steps.rb, which you should also delete
#
# You have been warned
module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /^the home\s?page$/
      '/'

    when /^the signup page/
      new_user_registration_path

    when /^community page/
      root_path
    
    when /^the forum page/
      posts_path
      
    when /^the new post page/
      new_post_path
      
    when /the Posts page/
      posts_path
    
    when /^the profile paage/
      profile_path

    when /^the resource page/
      repages_path
      
    when /^the New resource page/
      new_repage_path
    
    when /^the admin page/
      admin_index_path
    
    when /^the new resource page/
      new_repage_path
      
    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)