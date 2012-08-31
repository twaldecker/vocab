require 'sinatra'
require 'sass'
require 'data_mapper'

DataMapper::Logger.new($stdout, :debug)
DataMapper::setup(:default, 'sqlite://app.db')

#index action, just a template rendering.
get '/' do
  erb :index 
end

#get the stylesheet
get '/style.css' do
  scss :"/css/style"
end

get '/new.html' do
  erb :new
end

get '/ask.html' do
  erb :ask
end

get '/result.html' do
  erb :result
end
