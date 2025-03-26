print "input your name: "
name = gets.chomp

special_output = case name.downcase
  when 'alex' then "Like from Minecraft???\n"
  when 'steve' then "Like from Minecraft???\n"
  when 'jack black' then "Like from Nacho Libre???\n"
  else ''
end

print special_output

valid_input = false
while not valid_input
  print "input a number: "
  number_input = gets.chomp

  begin
    number = Integer(number_input)
    valid_input = true
  rescue ArgumentError
    puts "#{number_input} is not a valid integer."
  end
end

unless number == 3
  puts "Fun fact: You did not pick the number 3"
end

i = 0
loop do
  print name
  i += 1
  if i == number
    print "\n"
    break
  end
end


i = 0
while i < name.length do 
  puts name[i]
  i += 1
end

puts "You are trapped at the bottom of an infinite stairwell, what do you do?"
while (input = gets.chomp.downcase) != "blj" && input != "backwards long jump" do
  puts "You are trapped at the bottom of an infinite stairwell, what do you do?"
end
puts "You are free to save the princess now!"

5.times do |iter|
  puts "5 times this will happen, we are on #{iter}"
end

10.upto(20) { 
  |num| puts "#{num} this is a crazy way to do loops"
}

for i in 0..6
  puts "Yet another loop! This one is on iteration #{i}!"
  sleep 0.1
end

puts "arrays work as you expect from other languages, but with 1 or 2 neat additions"

array1_5 = [1,2,3,4,5]

puts array1_5
puts "-"*10 # Now this is awesome! I love when languages do this!
puts array1_5 - [1,3,5]