class CommentBroadcastJob < ApplicationJob
  queue_as :default

  def perform(post, comment, current_user)
    ActionCable.server.broadcast "comment: #{post.id}", message: render_comment(comment, current_user)
  end

  def render_comment(message, current_user)
  	# have to change this partial
    ApplicationController.renderer.render(partial: 'comments/commentsUpdate', \
      locals: { comment: message, current_user: current_user}) 
  end

end