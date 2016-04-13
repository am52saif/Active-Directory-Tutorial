require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "Please Enter a name for the store"
store_name = gets.chomp
@store4 = Store.create(name: store_name, mens_apparel: true)
puts @store4.errors[:name]
puts @store4.errors[:annual_revenue]
puts @store4.errors[:mens_apparel]
puts @store4.errors[:womens_apparel]

