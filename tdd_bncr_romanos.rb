require './bncr_romanos'

describe "hacer un Algo convertidor de numeros romanos a arabigos" do
  it "si le meto 0 debe retornar hilera vacia" do 
    expect(convertir(0)).to eq("")
  end

  {
    1 => "I",
    2 => "II",
    5 => "V", 
    9 => "IX"
  }.each do |arabigo, romano|
    it "Si le meto un #{arabigo.inspect} debe retornar un #{romano.inspect}" do
      expect(convertir(arabigo)).to eq(romano)
    end
  end
end
