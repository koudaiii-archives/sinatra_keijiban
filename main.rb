require 'sinatra'
get '/' do
   "Hello"
end

get '/example' do
  erb :example
end
