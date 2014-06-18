puts "How many bottles should we sing about?"
number_of_bottles = gets.chomp.downcase
num_only = number_of_bottles.split[1].to_i
if number_of_bottles.nil?
  puts "I need to know how many bottles to sing!"
elsif number_of_bottles != "sing #{num_only}"
  puts "Sorry, incorrect format. Please enter 'sing (number of bottles)'."
else
  while num_only > 0
  puts "#{num_only} bottles of beer on the wall, #{num_only} bottles of beer. Take one down, pass it around #{num_only-1} bottles of beer on the wall"
    num_only -= 1
  end
end

