# 1
# Given a hash of family members, with keys as the title and an array
# of names as the values, use Ruby's built-in select method to
# gather only immediate family members' names into a new array.
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

immediate_family = family.select do |k|
  k == :sisters || k == :brothers
end

array = immediate_family.values.flatten

p array

# 2
# Look at Ruby's merge method. Notice that it has two versions.
# What is the difference between merge and merge!? Write a
# program that uses both and illustrate the differences.
person = { name: "Bob", height: "6 ft", weight: "160 lbs" }
more = { hair: "Brown" }

puts person.merge(more) # does not mutate the caller.
puts person # back to original because merge does not mutate the caller.
puts person.merge!(more) # mutates the caller.
puts person # person and more are now combined because merge! mutates the caller.

# 3
# Using some of Ruby's built-in Hash methods, write a program
# that loops through a hash and prints all of the keys.
# Then write a program that does the same thing except printing
# the values. Finally, write a program that prints both.
ships = { rifter: "Frigate", corax: "Destroyer", vexor: "Cruiser" }

ships.each_key { |k| puts k }
ships.each_value { |v| puts v }
ships.each { |k, v| puts "#{k} is ship class #{v}" }

# 4
# Given the following expression, how would you access the name of the person?
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
puts person[:name]

# 5
# What method could you use to find out if a Hash contains a specific value
# in it? Write a program to demonstrate this use.
if person.has_value?('Bob')
  puts "Yes"
else
  puts "No"
end

# 6
# Given the array...
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
# Write a program that prints out groups of words that are anagrams.
# Anagrams are words that have the same exact letters in them but in a different order.
# Your output should look something like this:
# ["demo", "dome", "mode"]
# ["neon", "none"]
# (etc)

result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each do |k, v|
  puts "---"
  p v
end

# 7
# Given the following code...
x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}
# What's the difference between the two hashes that were created?

# my_hash2 is missing a colon in front of the x. It should look like { :x => "some value" }
# If it had the colon it would be the same as my_hash.

# 8
# If you see this error, what do you suspect is the most likely problem?
# NoMethodError: undefined method `keys' for Array
# There is no method called keys for Array objects.
