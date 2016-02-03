require 'sinatra'

get '/hola/:name' do |n|
  "Hola #{n} ... todo tuanis ?"
end
