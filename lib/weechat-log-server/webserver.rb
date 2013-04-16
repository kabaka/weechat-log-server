class Webserver < Sinatra::Base
  configure do
    set :views, File.expand_path($opts[:templates_dir])
  end

  get '/' do
    auth_required!
    erb :index
  end

  get '/:network/?' do
    auth_required!
    erb :network
  end

  get '/:network/:buffer/?' do
    auth_required!
    erb :buffer
  end

  get '/:network/:buffer/:date/?' do
    unless key! "/#{params[:network]}/#{params[:buffer]}/#{params[:date]}", params[:key]
      auth_required!
    end

    erb :buffer_date
  end

  helpers do

    def auth_required!
      unless authorized?
        response['WWW-Authenticate'] = %(Basic realm="Restricted Area")
        throw :halt, [401, "Not authorized\n"]
      end
    end

    def authorized?
      @auth ||=  Rack::Auth::Basic::Request.new(request.env)
      @auth.provided? && @auth.basic? && @auth.credentials && @auth.credentials == [$opts[:user_name], $opts[:password]]
    end

    
    def set_key route
      $keys[route] ||= generate_key
    end

    def generate_key
      SecureRandom.urlsafe_base64
    end

    def key! route, key
      $keys.has_key? route and $keys[route] == key
    end
  end
end
