require 'thin'
require 'sinatra'
require 'socket'
require 'htmlentities'

require 'weechat-log-server/webserver'
require 'weechat-log-server/string'

Thin::Server.start Webserver, '0.0.0.0', 4567
