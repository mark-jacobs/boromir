require 'rubygems'
require 'sinatra'

get '/' do
  redirect '/boromir/'
end

get '/boromir/' do 
  "Use path /boromir/ then things&boromir&should&say" 
end

get '/boromir/:simple' do
  @simple = {}
  @string = params[:simple].tr("&"," ")
  @simple[:simple] = @string
  p params[:simple]
  erb :boromir, :locals => {:simple => @simple[:simple]}
end

not_found do
  status 404
  'not found'
end
