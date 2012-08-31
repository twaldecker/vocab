require 'sinatra'
require 'sass'

#index action, just a template rendering.
get '/' do
  erb :index 
end

#get the stylesheet
get '/style.css' do
  scss :"/css/style"
end


