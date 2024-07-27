#!/usr/bin/env ruby

require_relative "classes/person"
require_relative "classes/animal"
require_relative "classes/pig"
require_relative "classes/cow"
require_relative "classes/duck"



person = Person.new
person.first_name = "Bob"
person.last_name = "Smith"
puts person.full_name
puts person.initial_and_last_name
# puts person.get_initial("Lucy")

puts '-----'

pig = Animal.new({noise: 'Oink!'})

puts pig.noise


puts '-----'

Animal.species.each do |type|
    puts type
end


wilbur = Pig.new
betsy = Cow.new 
donald = Duck.new

wilbur.eat
betsy.jump
donald.fly


puts wilbur.noise
puts betsy.noise
puts donald.noise

puts '----------'


puts Animal.total_animals
puts '----------'


puts betsy.noise
Animal.species = ['cat','mouse','moose']

Animal.species.each do |type|
    puts type
end