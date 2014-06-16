def beerbottles ()
  puts "How many bottles should we sing about?"
  number_of_bottles = gets.chomp.downcase
  if number_of_bottles.nil?
    puts "I need to know how many bottles to sing!"
  elsif number_of_bottles != "sing #{1}"
    puts "Sorry, incorrect format. Please enter 'sing (bottlecount)'."
    return
  else
    puts "Run program"
  end
end

puts beerbottles