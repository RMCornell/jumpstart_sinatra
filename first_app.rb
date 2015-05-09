require 'sinatra'
require 'sinatra/reloader' if development?

get '/hello' do
  "Hello Sinatra"
end

get '/frank' do
  name = "frank"
  "hello #{name}"
end

get '/:name' do
  name = params[:name]
  "Hi there #{name}!"
end

get '/:one/:two/:three' do
  "first #{params[:one]}, second #{params[:two]}, third #{params[:three]}"
end

get '/what/time/is/it/in/:number/hours' do
  number = params[:number].to_i
  time = Time.now + number * 3600
  "The time in #{number} hours is #{time}"

end

