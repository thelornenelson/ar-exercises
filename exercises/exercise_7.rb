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

puts "Enter a store name: "
@user_store = gets.chomp

@my_store = Store.create(name: @user_store, annual_revenue: 500_000, womens_apparel: true)

@my_store.errors.messages.each do |error|
  pp error
end
