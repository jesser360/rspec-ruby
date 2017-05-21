require_relative "../models/dog"

describe Dog do
  subject(:dog) {Dog.new("name", 5)}
  describe "::new" do
    it "makes a new dog" do
    # dog = Dog.new("sparky",5)
    expect(dog).to be_a(Dog)
   end
  end

  describe "#name" do
    it "allows reading and writing a name" do
      # dog = Dog.new("sparky",5)
      dog.name = "Sparky"
      expect(dog.name).to eq("Sparky")
    end
  end

  describe "#eat" do
    it "lowers hunger level when invoked" do
      # dog = Dog.new("sparky",5)
      dog.hunger = 5
      dog.eat
      expect(dog.hunger).to eq(4)
    end
  end
  context "when dog is full" do
    it "doesnt decrement hunger" do
      # dog = Dog.new("sparky",5)
      dog.hunger = 0
      dog.eat
      expect(dog.hunger).to eq(0)
    end
  end
end
