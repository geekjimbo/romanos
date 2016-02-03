require 'csv'

def cuales_jugadores?
  col_data=[]
  CSV.foreach("jugadores.csv") {|row| col_data << row[0]}
  col_data
end
