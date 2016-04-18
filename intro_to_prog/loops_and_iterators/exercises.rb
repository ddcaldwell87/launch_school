# 1
# What does the each method in the following program return after it is finished executing?
x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end
# [1, 2, 3, 4, 5]

# 2
# Write a while loop that takes input from the user, performs an action, and only stops when
# the user types "STOP". Each loop can get info from the user.
x = ""
while x != "stop" do
  puts "Type anything. Type stop to end loop."
  answer = gets.chomp
  puts "Keep going?"
  x = gets.chomp
end

# 3
# Use the each_with_index method to iterate through an array of your creation that
# prints each index and value of the array.
classes = ["Math", "Schience", "English", "History"]

classes.each_with_index do |course, index|
  puts "#{index+1}. #{course}"
end

# 4
# Write a method that counts down to zero using recursion.
def countdown(number)
  if number <= 0
    puts number
  else
    puts number
    countdown(number-1)
  end
end

countdown(0)
countdown(5)
countdown(10)
