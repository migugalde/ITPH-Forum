class CommentUpdatesChannel < ApplicationCable::Channel
  # def subscribed
  #   # stream_from "some_channel"
  #   # stream_from "comment: #{post_id}"
  #   stream_from "comment: 1"
  #   # stream_from "comment:1"
  # end


  def subscribed
    # stream_from "some_channel"
    # stream_from "comment: #{post_id}"

    
    # stream_from "comment: #{data}"
    stream_from "comment: #{params[:id]["prevObject"]["0"]["location"]["pathname"]}"
    
  end

  # def unsubscribed
  #   # Any cleanup needed when channel is unsubscribed
  # end

  def follow(data)
  	# stop_all_streams
  	# stream_from "comment: #{data['post_id']}"
  	stream_from "comment: #{data["pathname"]}"
  	byebug
  end

  def unfollow
  	stop_all_streams
  end
end