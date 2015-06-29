require 'sinatra'

configure do
  # I use a VM for my dev environment
  set :bind, '0.0.0.0'
end

get '/' do
  'Welcome to the SMR coding challenge Mock Server. You probably wanted to go
  <a href="/candidates">here</a>!'
end

get '/candidates' do
  content_type :json
  erb :index
end
