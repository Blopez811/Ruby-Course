class Dice

  attr_accessor :value

  def initialize
    @value = 3  
  end

  def value
    @value
  end

  def roll 
    @value = (rand(5) + 1).to_s
  end
end