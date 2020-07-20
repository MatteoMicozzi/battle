require 'sinatra'
require 'shotgun'

set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/secret' do
  "Secret Message!?!"
end

get '/dill' do
  "Hi I am dill"
end
