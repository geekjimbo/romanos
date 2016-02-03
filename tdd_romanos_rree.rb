require './romanos_rree.rb'

describe "convertir de arabigos a romanos" do 

  { 0 => "",
    4 => "IV",
    5 => "V",
    9 => "IX"
  }.each do |arabigo, romano|
    it "ingresar #{arabigo} y recibir un #{romano}" do
      expect(convert(arabigo)).to eq(romano)
    end
  end
end

