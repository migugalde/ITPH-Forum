class PostsBroadcastJob < ApplicationJob
  queue_as :default

  def perform(message)
    ActionCable.server.broadcast 'posts_notifications', message: render_message(message)
  end

  def render_message(message)
    ApplicationController.renderer.render(partial: 'posts/postsUpdate', \
      locals: { post: message }) 
  end

end
