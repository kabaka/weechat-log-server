class Webserver < Sinatra::Base
  configure do
    set :views, File.expand_path($opts[:templates_dir])
  end

  get '/' do
    erb :index
  end

  get '/:network/?' do
    erb :network
  end

  get '/:network/:buffer/?' do
    erb :buffer
  end
end
