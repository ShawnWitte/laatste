require 'webrick'

server = WEBrick::HTTPServer.new :Port => 5000

server.mount_proc '/' do |request, response|
	response.body = 'Hello, world!'
end

server.start