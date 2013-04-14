require 'thin'
require 'sinatra'
require 'socket'
require 'htmlentities'

require 'weechat-log-server/webserver'
require 'weechat-log-server/string'

Thin::Server.start Webserver, $opts[:bind_address], $opts[:port]
