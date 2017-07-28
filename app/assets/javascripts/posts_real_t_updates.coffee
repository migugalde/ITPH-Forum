App.cable.subscriptions.create "PostsRealTUpdatesChannel",
	received:(data) ->
		#append things to the posts using jQuery
		# $('#emptyPost').append data['message']
		# $('#emptyPost').append ("stuff")
		# alert("I knew it!");
		$('#messages').append ("real Time Updates")
		info = JSON.parse(data)
		# $('#messages').append (data[title])
		# info.content = info.content.concat("\n")
		# info.title = info.title.concat("\n")
		# $('#messages').append (info.content )
		# $('#messages').append (info.title)

		#this is the ruby version of rendering a partial
		# render :json => { :attachmentPartial => render_to_string('posts/postsUpdate', :layout => false, :locals => { :message => @message }) }


		#this is the jQuery version of rendiner a partial
		# ('.projects').append
		# ("<%= render partial: 'posts/pistsUpdate') %>"

		# 	).html_safe


		# $("#items_grid").html("<%= escape_javascript(render partial: 'items_list', locals: { items: @selected } ) %>");

		$('#messages').html("%= escape_javascript(render partial: 'posts/postsUpdate', locals:{info.title: @title, \
			info.content: @content} ");

		# $('#messages').append ("real Time Updates")