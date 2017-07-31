App.cable.subscriptions.create "PostsRealTUpdatesChannel",
    received:(data) ->
        $('#messages').prepend data['message']

