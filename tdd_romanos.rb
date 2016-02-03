# TDD numeros romanos
require "./romanos"

describe "convertir de numeros arabigos a romanos" do
  context "mae, los romanos no tenian ceros (0)s" do
    it "Si le meto un Cero(0) debe retornar una hilera vacia" do
      expect(convert(0)).to eq("")
    end
  end
 
  {
    1 => "I",
    2 => "II",
    5 => "V", 
    9 => "IX"
  }.each do |arabigo, romano|
    it "Si le meto un #{arabigo.inspect} debe retornar un #{romano.inspect}" do
      expect(convert(arabigo)).to eq(romano)
    end
  end
end
