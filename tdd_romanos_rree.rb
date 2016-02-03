require './romanos_rree.rb'

describe "convertir de arabigos a romanos" do 

  { 
    9 => "IX",
    6 => 'VI',
    5 => "V",
    4 => "IV",
    2 => 'II',
    1 => 'I',
    0 => ""
  }.each do |arabigo, romano|
    it "ingresar #{arabigo} y recibir un #{romano}" do
      expect(convert(arabigo)).to eq(romano)
    end
  end
end

