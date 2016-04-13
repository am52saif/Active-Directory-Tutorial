require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each do |men|
	puts "Name: #{men.name}, Annual Revenue: #{men.annual_revenue}"
end

@women_stores = Store.where("annual_revenue < ? and womens_apparel = ?", 1000000,true)

@women_stores.each do |women|
	puts "Name: #{women.name}, Annual Revenue: #{women.annual_revenue}"
end