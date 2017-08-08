App.cable.subscriptions.create {channel: "CommentUpdatesChannel", id: $("post_id")},
    collection: -> $("#post_id")
    connected: ->
        setTimeout =>
            @followCurrentPost()
        , 1000

    received:(data) ->
        $('#messaIIIIges').prepend data['message']

    followCurrentPost: ->
        if hello = @collection().data('id')
            @perform 'subscribed', post_id: hello
        else
            @perfrom 'unfollow'