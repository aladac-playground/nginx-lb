require 'sinatra'

get '/' do
  ENV['APP_NAME']
end

run Sinatra::Application
