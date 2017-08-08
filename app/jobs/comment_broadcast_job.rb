class CommentBroadcastJob < ApplicationJob
  queue_as :default

  def perform(post)
    ActionCable.server.broadcast stream_from "comment: #{post.id}", message: render_message(message)
  end

  def render_message(message)
  	# have to change this partial
    ApplicationController.renderer.render(partial: 'posts/postsUpdate', \
      locals: { post: message }) 
  end

end