require 'sinatra'
require 'csv'

get '/jugadores' do
  col_data=[]
  CSV.foreach("jugadores.csv") {|row| col_data << row[0]+", "}
  col_data
end
