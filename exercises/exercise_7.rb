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

# Your application code
puts "Enter a store name:"
store_name = gets.chomp

store = Store.new(name: store_name, annual_revenue: 0, mens_apparel: true, womens_apparel: false)
unless store.save
  puts "Error(s) occurred while creating the store:"
  store.errors.full_messages.each do |error|
    puts error
  end
end


