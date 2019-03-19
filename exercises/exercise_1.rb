require_relative '../setup'

puts "\nExercise 1"
puts "----------"

# store = Store.create(name: string, annual_revenue: integer, mens_apparel: boolean, womens_apparel :boolean)

store1 = (Store.create(name: 'Burnaby', annual_revenue: 300000, mens_apparel: true, womens_apparel: true))
store2 = (Store.create(name: 'Richmond', annual_revenue: 1260000, mens_apparel: false, womens_apparel: true))
store1 = (Store.create(name: 'Gastown', annual_revenue: 190000, mens_apparel: true, womens_apparel: false))

puts  "\nThere are #{Store.count} stores in the database"