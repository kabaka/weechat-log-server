require 'thin'
require 'sinatra'
require 'socket'
require 'htmlentities'
require 'securerandom'

require 'weechat-log-server/webserver'
require 'weechat-log-server/string'

$keys = {}

Thin::Server.start Webserver, $opts[:bind_address], $opts[:port]
