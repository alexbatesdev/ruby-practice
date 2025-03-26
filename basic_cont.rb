puts "I honestly just made this a separate file from basic.rb because I was getting sick of doing all the steps to get to my new stuff, but I also don't want to comment things out and I want the code to be somewhat in the order I wrote it"

my_first_hash = {
  "key" => "value",
  "wow" => "that's a very neat way to do that",
  "hmmm" => "I wonder why",
  "maybe" => "to distinguish from json?",
  "age" => 22,
  "array" => [1,2,3,4,5],
  "hash" => {
    "brown" => true,
    "potato" => true
  }
}

puts my_first_hash
puts "-"*20
puts my_first_hash.keys
puts "="*20
puts my_first_hash.values
puts "-="*10
puts my_first_hash.entries[0]
puts my_first_hash.entries[1]

def method_to_the_madness
  "return value"
end

puts method_to_the_madness

def a_method_can_be_a_question?
  "why??? Future me here: these are to denote a method that returns a true or a false (predicate methods), so technically this method is not following proper naming conventions"
end

puts a_method_can_be_a_question?

def a_method_can_be_loud!
  "why??? probably for those danger versions of methods"
end

puts a_method_can_be_loud!

def greet(name = "World")
  "Hello, " + name + "!"
end

puts greet("Larry")

puts "Using puts:"
puts [1,2,3]
p "Using p:"
p [1,2,3]

p "I'm going to default to p now, this is exactly what I want from a print"

# Enumerators work mostly as expected, here are some examples
# https://www.theodinproject.com/lessons/ruby-basic-enumerable-methods

# Select and reject are cool

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.select { |friend| friend != 'Brian' }
 #=> ["Sharon", "Leo", "Leila", "Arun"]

 friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.reject { |friend| friend == 'Brian' }
 #=> ["Sharon", "Leo", "Leila", "Arun"]


# each works as expected, the variable grabbing/assigning syntax is unique though

my_hash = { "one" => 1, "two" => 2 }

my_hash.each { |key, value| puts "#{key} is #{value}" }

#=> one is 1
#=> two is 2
#=> { "one" => 1, "two" => 2}


my_hash.each { |pair| puts "the pair is #{pair}" }

#=> the pair is ["one", 1]
#=> the pair is ["two", 2]
#=> { "one" => 1, "two" => 2}

# to get the index tou need to just add _with_index to get the other each method that gets index as well
fruits = ["apple", "banana", "strawberry", "pineapple"]

fruits.each_with_index { |fruit, index| puts fruit if index.even? }

#=> apple
#=> strawberry
#=> ["apple", "banana", "strawberry", "pineapple"]




# each doesnt modify the original array value and return ot with the output of each iteration, but map does
# if you do map! it will modify the original array variable as well
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.map { |friend| friend.upcase }
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`


# The reduce method is unique and kinda crazy
# the first variable is the accumulator, and the second variable is the value of whatever step we are on during the enumeration
my_numbers = [5, 6, 7, 8]

my_numbers.reduce(1000) { |sum, number| sum + number }
#=> 1026


votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]

votes.reduce(Hash.new(0)) do |result, vote|
  result[vote] += 1
  result
end
#=> {"Bob's Dirty Burger Shack"=>2, "St. Mark's Bistro"=>1}


# This explanation is significant and I don't want to write it all down right now
# https://www.theodinproject.com/lessons/ruby-nested-collections#creating-a-new-nested-array

# use nested_structure.dig(A,B) instead of nested_structure[A][B] to avoid NoMethodError and get nil instead

# mostly boils down to pass by reference happens here
mutable = Array.new(3, Array.new(2))
#=> [[nil, nil], [nil, nil], [nil, nil]]
mutable[0][0] = 1000
#=> 1000
mutable
#=> [[1000, nil], [1000, nil], [1000, nil]]

# pass by value happens here, but that's a major oversimplification that may be technically wrong
immutable = Array.new(3) { Array.new(2) }
#=> [[nil, nil], [nil, nil], [nil, nil]]
immutable[0][0] = 1000
#=> 1000
immutable
#=> [[1000, nil], [nil, nil], [nil, nil]]
