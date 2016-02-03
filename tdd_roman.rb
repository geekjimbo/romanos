require "/Users/jimmyfigueroa/code/roman"

describe "aqui va el algo de numeros romanos" do
   
  it "si le meto un blanco que retorne un 0 (cero)" do
    expect(convertir_romanos("")).to eq(0)
  end

  it "si le meto un I que retorne un  1 uno" do
    expect(convertir_romanos("I")).to eq(1)
  end
end
