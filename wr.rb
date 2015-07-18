class Walrus
  def receive_gift!(gift)
    if gift[:edible?] == true
    end
  end
end

describe Walrus do
  it "eats food" do
    cheese = stub(:edible? => true)
    subject.receive_gift!(cheese)
  end
end
