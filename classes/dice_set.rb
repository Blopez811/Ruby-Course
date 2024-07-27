require_relative "dice.rb"

class DiceSet
    attr_accessor :dice_one, :dice_two, :dice_array
    def initialize
        @dice_one = Dice.new
        @dice_one.value = '1'
        @dice_two = Dice.new
        @dice_two.value = '6'
        @dice_array = [@dice_one, @dice_two]

        
        
    end

    def display
      "[ #{@dice_one.value} ] - [ #{@dice_two.value} ]"
    end




    def roll
      @dice_one.roll
      @dice_two.roll
      @dice_array
    end

end