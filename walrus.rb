class Walrus
  attr_reader :energy

  def initialize
    @energy = 0
  end

  def receive_gift!(gift)
    if gift[:edible?] == true
       gift.digest!
       @energy += gift[:energy]
    end
  end
end

describe Walrus do
  context "eating" do  
    it "eats food" do
      cheese = stub(:edible? => true, :energy => 100)
      cheese.should_receive(:digest!)
      subject.receive_gift!(cheese)
    end

    it "gains energy by eating food" do
        cheese = stub(:edible? => true, :energy => 100)
        cheese.should_receive(:digest!)
      expect do
        subject.receive_gift!(cheese)
      end.to change { subject.energy }.by 100
    end
  end

  it "ignores non-edible things" do
    shoes = stub(:edible? => false)
    subject.receive_gift!(shoes)
  end

  it "does not gains energy by getting non-edible things" do
    shoes = stub(:edible? => false)
    expect do
      subject.receive_gift!(shoes)
    end.not_to change { subject.energy }
  end
end
