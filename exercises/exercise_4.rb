require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "\nExercise 4"
puts "----------"

# Create 3 more stores
Store.create(name: 'Surrey', annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: 'Whistler', annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: 'Yaletown', annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

# Test output to check stores have been added
puts  "\nThere are #{Store.count} stores in the database"

# Look up the stores that carry men's apparel
@mens_stores = Store.where(mens_apparel: true)

# Loop through the men's stores, printing name and revenue
@mens_stores.each do |store|
  puts "Store Name: #{store.name} Annual Revenue: #{store.annual_revenue}"
end

# Look up the stores that carry women's apparel & less than $1M
@womens_stores = Store.where("womens_apparel = true AND annual_revenue < 1000000")

# Loop through the women's stores, printing name and revenue
@womens_stores. each do |store|
  puts "Store Name: #{store.name} Annual Revenue: #{store.annual_revenue}"
end

