require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Burnaby Employees
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Joe", last_name: "Smith", hourly_rate: 60)
@store1.employees.create(first_name: "Karen", last_name: "Johnson", hourly_rate: 40)
@store1.employees.create(first_name: "Jill", last_name: "Williams", hourly_rate: 25)
@store1.employees.create(first_name: "Aaron", last_name: "Jones", hourly_rate: 25)
@store1.employees.create(first_name: "Frank", last_name: "Miller", hourly_rate: 25)
@store1.employees.create(first_name: "Sara", last_name: "Wilson", hourly_rate: 25)

# Richmond Employees
@store1.employees.create(first_name: "Norma", last_name: "Hall", hourly_rate: 60)
@store1.employees.create(first_name: "Quinton", last_name: "Allen", hourly_rate: 60)
@store1.employees.create(first_name: "Alice", last_name: "King", hourly_rate: 60)
@store1.employees.create(first_name: "Julia", last_name: "Scott", hourly_rate: 60)
@store1.employees.create(first_name: "Josh", last_name: "Taylor", hourly_rate: 60)
@store1.employees.create(first_name: "Margo", last_name: "Joseph", hourly_rate: 60)

puts "\nThere are #{Employee.count} employees."