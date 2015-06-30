require 'sinatra'

configure do
  # I use a VM for my dev environment
  set :bind, '0.0.0.0'
end

get '/' do
  'Welcome to the SMR coding challenge Mock Server. You probably wanted to go
  <a href="/events/1/candidates">here</a>!'
end

get '/events/:event_id/candidates' do |event_id|
  content_type :json
  unless event_id == "1"
    return 404
  end
  erb :index
end
