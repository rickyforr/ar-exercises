require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
r = Store.all
a = []
r.each do |i|
 a.push(i.annual_revenue)
end

puts a.sum

s = Store.average(:annual_revenue)
puts "Average revenue ", s

earners = Store.where("annual_revenue > 1000000").count
puts earners