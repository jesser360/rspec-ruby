puts "dog file is connected"

class Dog
  attr_accessor :name, :hunger

  def initialize(name,hunger)
    @name = name
    @hunger = hunger
  end

  def eat
    unless(self.hunger == 0)
    self.hunger -= 1
    end
  end


end
