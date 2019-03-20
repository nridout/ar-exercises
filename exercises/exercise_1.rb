require_relative '../setup'

puts "\nExercise 1"
puts "----------"

# Use AR class method to create 3 stores in the database
Store.create(name: 'Burnaby', annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
Store.create(name: 'Richmond', annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
Store.create(name: 'Gastown', annual_revenue: 190000, mens_apparel: true, womens_apparel: false)

# Output the number of stores
puts  "\nThere are #{Store.count} stores in the database"