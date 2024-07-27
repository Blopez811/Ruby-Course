#!/usr/bin/env ruby


require_relative "classes/dice_set"


def main_loop
  dice_set = DiceSet.new 
  puts "Welcome to the dice rolling game!"
  puts "--------------------------"
  puts dice_set.display

  play_again_bool = true
  while play_again_bool == true
    puts "Type 'r' to roll again, 'q' to quit"  
    print '> '
    response = gets.chomp.downcase
    if response == "r"
      dice_set.roll
      puts dice_set.display
    elsif 
      response == 'q'
      puts "Thanks for playing, goodbye!"
      exit
    else
      puts "Please provide a valid input"

    end

  end


end

main_loop