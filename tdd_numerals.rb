require '/Users/jimmyfigueroa/code/romanos'

describe "convertir numeros arabigos a romanos" do
  context "Los romanos no usaban el 0 (cero)" do
    it "convierta 0 en una hilera en vacia" do
        expect(convert(0)).to eq("")
    end
  end

  {
    1 => "I",
    5 => "V",
    2 => "II",
    3 => "III"
  }.each_pair do |arabic, roman|
    it "convertir #{arabic} a #{roman}" do
      expect(convert(arabic)).to eq(roman)
    end
  end

end
