require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
# Your application code

@store1 = Store.find(1)

@store2 = Store.second

@store1.update(name: 'New Name')

puts @store1.inspect

