require_relative '../setup'
require_relative './exercise_1'

puts "\nExercise 2"
puts "----------"


@store1 = Store.find_by(id: 1)
puts "\nLoad store 1: #{@store1.name}"

@store2 = Store.find_by(id: 2)
puts "\nLoad store 2: #{@store2.name}"

@store1 = Store.find_by(id: 1)
@store1.name = 'Winners'
@store1.save

puts "\nUpdate store 2: #{@store1.name}"


