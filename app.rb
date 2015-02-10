require 'sinatra'
require 'sinatra/reloader'
require 'json'

get '/now' do
  time = Time.now
  "The current time is: #{time} ?"
end

get '/hackeryou' do
  "Is Amazing!"
end

get '/hi/?:name?' do
  "You did it #{params[:name]}!"
end

post '/users' do
    "You posted the following data: #{params.inspect}"
end

post '/books' do
  data = JSON.parse(request.body.read)

  erb :books, locals: {data: data}
end

#CURL
#you can use curl in the bash terminal to post to a webpage.
#url --d-urlencode "it automatically parses the url and adds '+s'"
