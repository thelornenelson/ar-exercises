require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@total_revenue = Store.sum(:annual_revenue)
puts "Total revenue: #{@total_revenue}"
puts "Average revenue: #{@total_revenue / Store.count}"

puts "Number of stores over $1M/yr revenue: #{Store.where("annual_revenue > ?", 1_000_000).count}"
