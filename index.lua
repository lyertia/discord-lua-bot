local yourToken = "Nzk2MjcwMjA0MzY3MTQyOTIy.X_Veag.-n0MZ3iYERurU8hissqTTvbg7mc"


local discordia = require('discordia')
local client = discordia.Client()

client:on('ready', function()
	print('Logged in as '.. client.user.username)
end)

client:on('messageCreate', function(message)
	if message.content == '!ping' then
		message.channel:send('Pong!')
	end
end)

client:run("Bot " .. yourToken)
