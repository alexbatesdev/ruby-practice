print "input your name: "
name = gets.chomp
print "input a number: "
number_input = gets.chomp

begin
  number = Integer(number_input)
  puts "#{number_input} is a valid integer."
rescue ArgumentError
  puts "#{number_input} is not a valid integer."
end