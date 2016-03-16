# WeeChat Log Server

Sinatra-powered WeeChat HTTP Log Viewer

# Usage

Until this is a gem (it will be soon), you must start the bot with `ruby -Ilib
bin/weechat-log-server`. All args are optional, but setting -p is recommended.

## Command Line Options

    Usage: bin/weechat-log-server [options]

    Options:

    -v, --verbose                    Output a lot of information.
    -d, --weechat-directory DIR      WeeChat's log directory (default: ~/.weechat/logs/)
    -r, --regex REGEX                Regular expression to match file names. (default: (?-mix:irc\.(?<network>[^\.]+)\.(?<buffer>[^\.]+)\.weechatlog))
    -e, --encoding ENCODING          Encoding of the logs. (default: UTF-8, old: ASCII-8BIT)
    -t, --templates-directory DIR    Sinatra templates directory (default: views)
    -c, --cache-directory DIR        Cache directory (default: cache)
    -P, --port PORT                  HTTP server port (default: 4567)
    -b, --bind-address IP            HTTP server listen IP (default: 0.0.0.0)
    -u, --user-name USER             User name to access logs. (default: admin)
    -p, --password PASSWORD          Password to access logs. (default: admin)

# TODO

  * Add necessary parts to make `weechat-log-server` a gem.
  * Complete README.md file.
  * Simplify style customization.
  * Improve default style.
  * Refactor:
    * Move duplicate or complex tasks to Sinatra helpers.
    * Improve code organization.

