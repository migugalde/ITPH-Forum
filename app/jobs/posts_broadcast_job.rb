class PostsBroadcastJob < ApplicationJob
  queue_as :default

  # def perform(*args)
  #   # Do something later
  #   #send json from here to coffeescript
  #   jsonData = args
  #   ActionCable.server.broadcast(
  #   	"posts_notifications",
  #     jsonData
  #   	)
  # end

  def perform(message)
    ActionCable.server.broadcast 'posts_notifications', message: render_message(message)
  end

  def render_message(message)
    ApplicationController.renderer.render(partial: 'posts/postsUpdate', \
      locals: { post: message }) 
  end

end



# Somewhere in your app this is called, perhaps
# from a NewCommentJob.
# ActionCable.server.broadcast(
#   "chat_#{room}",
#   sent_by: 'Paul',
#   body: 'This is a cool chat app.'
# )
# end


#                     %h2.title
#                         = link_to post.title, post
#                     %p.message
#                         = post.content
#                     %p.date
#                         Published at
#                         = time_ago_in_words(post.created_at)
#                         by
#                         %a
#                             = link_to post.user.email, profile_path(post.user.id)
                            

#                     %p.tag
#                         /= = raw post.all_tags (seems redundant, keeping next line in favor)
#                         = raw tag_links(post.all_tags)