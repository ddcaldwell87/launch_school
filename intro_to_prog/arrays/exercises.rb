# 1
# Below we have given you an array and a number. Write a program that checks to see if the number appears in the array.
arr = [1, 3, 5, 7, 9, 11]
number = 3
if arr.include?(number)
  puts "Yes"
end

# 2
# What will the following programs return? What is value of arr after each?
1. arr = ["b", "a"]
   arr = arr.product(Array(1..3))
   arr.first.delete(arr.first.last)
# return 1
# [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

2. arr = ["b", "a"]
   arr = arr.product([Array(1..3)])
   arr.first.delete(arr.first.last)
# return [1, 2, 3]
# [["b", [1, 2, 3]], ["a", [1, 2, 3]]]

# 3
# How do you print the word "example" from the following array?
arr = [["test", "hello", "world"],["example", "mem"]]
arr.last.first

# 4
# What does each method return in the following example?
arr = [15, 7, 18, 5, 12, 8, 5, 1]

1. arr.index(5) # 3

2. arr.index[5] # NoMethodError

3. arr[5] # 8

# 5
# What is the value of a, b, and c in the following program?
string = "Welcome to America!"
a = string[6] # e
b = string[11] # A
c = string[19] # nil

# 6
# You run the following code...
names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] = 'jody'

# ...and get the following error message:
# TypeError: no implicit conversion of String into Integer
#  from (irb):2:in `[]='
#  from (irb):2
#  from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'

# What is the problem and how can it be fixed?

# The error is because there is a string used as 'margaret' in names['margaret'] = 'jody'. The value inside the [] needs to be
# an integer, specifacly its index value. names[3] = 'jody' would fix the error.

# 7
arr = [1, 2, 3, 4, 5]
new_arr = []

arr.each do |n|
  new_arr << n + 2
end

p arr
p new_arr
