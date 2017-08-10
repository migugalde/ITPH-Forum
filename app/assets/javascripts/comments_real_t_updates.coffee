App.cable.subscriptions.create {channel: "CommentUpdatesChannel",\
      id: $("post_id")},
    collection: -> $("#post_id")
    
    received:(data) ->
      $('#commentUpdateId').replaceWith data['message']

    followCurrentPost: ->
      if (hello = @collection().data('id'))
        @perform 'subscribed', post_id: hello
      else
        @perfrom 'unfollow'