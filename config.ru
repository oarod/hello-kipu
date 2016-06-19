require './server'

begin
  require 'rack-livereload'

  use Rack::LiveReload
rescue LoadError
end

run Sinatra::Application
