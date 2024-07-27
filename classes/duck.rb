require_relative 'animal'

class Duck < Animal 
  def initialize 
    @noise = 'Quack'
    @color = 'Black'
  end

  def fly 
    puts "Flying free as a bird!"

  end

end