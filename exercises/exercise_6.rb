require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Don", last_name: "Burks", hourly_rate: 30)

@store2.employees.create(first_name: "Ali Asgar", last_name: "Merchant", hourly_rate: 100)
@store2.employees.create(first_name: "Chris", last_name: "son", hourly_rate: 80)
