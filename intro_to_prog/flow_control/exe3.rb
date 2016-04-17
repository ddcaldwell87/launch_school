# Write a program that takes a number from the user between 0 and 100 and reports back whether
# the number is between 0 and 50, 51 and 100, or above 100.

def conditional(number)
  if number < 0
    puts "Not a valid entry, #{number} is below 0!"
  elsif number <= 50
    puts "#{number} is between 0 and 50!"
  elsif number <= 100
    puts "#{number} is between 51 and 100!"
  else number > 101
    puts "Not a valid entry, #{number} is above 100!"
  end
end

# Rewrite your program from exercise 3 using a case statement.
# Wrap the statement from exercise 3 in a method and wrap this new case statement in a method.
# Make sure they both still work.

def case_statement(number)
  case
    when number < 0
      puts "This is not a valid entry!"
    when number <= 50
      puts "You have chosen #{number}, and it is between 0 and 50"
    when number <= 100
      puts "You have chosen #{number}, and it is between 51 and 100"
    else number > 101
      puts "#{number} is above 100"
  end
end

puts "Pick a number between 0 and 100."
number = gets.chomp.to_i

conditional(number)
case_statement(number)
