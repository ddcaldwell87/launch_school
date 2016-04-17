# Introduction to Programming with Ruby book chapter Variables exercise 2.

puts 'How old are you?'
age = gets.chomp

ten = age.to_i + 10
twenty = age.to_i + 20
thirty = age.to_i + 30
fourty = age.to_i + 40

puts 'In 10 years you will be: ' + ten.to_s
puts 'In 20 years you will be: ' + twenty.to_s
puts 'In 30 years you will be: ' + thirty.to_s
puts 'In 40 years you will be: ' + fourty.to_s
