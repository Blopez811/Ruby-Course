require_relative 'animal.rb'

class Pig < Animal 
  def initialize
    @noise = 'Oink'
    @color = 'Pink'
  end

  def eat 
    puts "Nom Nom Nom"
  end
end