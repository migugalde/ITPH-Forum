App.cable.subscriptions.create "PostsRealTUpdatesChannel",
	received:(data) ->
		# info = JSON.parse(data)
		$('#messages').append data['message']

