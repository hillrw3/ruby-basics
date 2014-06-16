puts "Say anything!"

response = gets.chomp

if (response == response.upcase)
  puts "NO, NOT SINCE #{rand(19)+1930}"
else
  puts "HUH?! SPEAK UP SONNY!"
end
