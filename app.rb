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

get '/matt' do
  "Hi I'm Matteo"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
