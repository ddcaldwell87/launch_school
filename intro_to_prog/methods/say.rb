puts 'hello'
puts 'hi'
puts 'how are you'
puts 'i\'m fine'

# refactored
def say(words)
  puts words + '.'
end

say('hello')
say('hi')
say('how are you')
say('i\'m fine')

# refactored again
def say(words='hello')
  puts words + '.'
end

say()
say('hi')
say('how are you')
say('i\'m fine')
