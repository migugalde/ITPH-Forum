class CommentUpdatesChannel < ApplicationCable::Channel
  # def subscribed
  #   # stream_from "some_channel"
  #   # stream_from "comment: #{post_id}"
  #   stream_from "comment: 1"
  #   # stream_from "comment:1"
  # end


  def subscribed
    # I am getting the data from params which is passed when we request 
    # data from the server
    postPathId = params[:id]["prevObject"]["0"]["location"]["pathname"]

    postId = postPathId.split(/[^\d]/).join
    resource = postPathId.gsub(/\W+/, '')

    # adding this "posts#{postId}" as a temp sol
    if postId != "" and resource == "posts#{postId}"
      stream_from "comment: #{postId}"
    end
    
  end

  # def unsubscribed
  #   # Any cleanup needed when channel is unsubscribed
  # end

  def follow(data)
  	# stop_all_streams
  	# stream_from "comment: #{data['post_id']}"
  	stream_from "comment: #{data["pathname"]}"
  	# byebug
  end

  def unfollow
  	stop_all_streams
  end
end