def greeting(name, options = {})
  if options.empty?
    puts "Hello, my name is #{name}"
  else
    puts "Hi, my name is #{name}, I am #{options[:age]}, and I live in #{options[:city]}."
  end
end

greeting("Bob")
greeting("Bob", age: 62, city: "New York City")
