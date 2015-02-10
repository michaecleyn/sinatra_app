require 'sinatra'
require 'sinatra/reloader'
require 'json'

get '/' do
  erb :index
end

get '/contact' do
  erb :contact
end

get '/about' do
  erb :about
end

get '/now' do
  time = Time.now
  "The current time is: #{time} ?"
end

get '/hackeryou' do
  "Is Amazing!"
end

get '/hello' do
  "Hello minitest!"
end

get '/week' do
  Date.today.strftime("%A")
end

get '/hello' do
  "Hello minitest!"
end


get '/hi/:name' do
  name = params[:name].to_s
  erb :index, locals:{name: name}
end

post '/users' do
    "You posted the following data: #{params.inspect}"
end

post '/books' do
  data = JSON.parse(request.body.read)

  erb :books, locals: {data: data}
end

get '/Michael' do
  "Michael"
end

#CURL
#you can use curl in the bash terminal to post to a webpage.
#url --d-urlencode "it automatically parses the url and adds '+s'"
