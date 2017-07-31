# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class PostsRealTUpdatesChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"

    # stream_from "posts_notifications_#{post_id}"
    stream_from "posts_notifications"

    # i don't think I need much here because i don't need 
    # to perform an action when a user subscribes right now
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed

    #there is nothing to do so far when a some
    #unscubscribes from the channel
  end


  # def renderPartial(data)
  #   ActionCable.server.broadcast "posts_notifications", message: data['message']
  # end
end
