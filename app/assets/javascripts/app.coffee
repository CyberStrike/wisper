$ ()->

  pusher = new Pusher(Pusher.key)

  channel = pusher.subscribe('private-'+ current_user.id)

  ## Debug msgs
  pusher.connection.bind 'connecting', ()->
  $('div#status').text 'Connecting to Pusher...'

  pusher.connection.bind 'connected', ()->
  $('div#status').text 'Connected to Pusher!'

  pusher.connection.bind 'failed', ()->
  $('div#status').text 'Connection to Pusher failed :('

  channel = pusher.subscribe('test_channel');

  channel.bind 'greet', (data)->
    alert(data.greeting)


