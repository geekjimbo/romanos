class Walrus
  def receive_gift!(gift)
    if gift[:edible?] == true
       gift.digest!
    end
  end
end

describe Walrus do
  it "eats food" do
    cheese = stub(:edible? => true)
    cheese.should_receive(:digest!)
    subject.receive_gift!(cheese)
  end

  it "ignores non-edible things" do
    shoes = stub(:edible? => false)
    subject.receive_gift!(shoes)
  end
end
