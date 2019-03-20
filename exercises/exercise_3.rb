require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "\nExercise 3"
puts "----------"

# Load the 3rd store and delete it
@store3 = Store.find_by(id: 3)
@store3.destroy

# Verify the store has been deleted by outputting the count
puts  "\nThere are now #{Store.count} stores in the database"