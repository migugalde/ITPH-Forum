App.cable.subscriptions.create "PostsRealTUpdatesChannel",
	received:(data) ->
		# info = JSON.parse(data)
		$('#messages').prepend data['message']

