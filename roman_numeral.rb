def number_to_rom_num
  puts "Please enter an integer"
  number = gets.chomp.to_i
  rom_num =
  case (number)
    when (number / 1000 >= 1)
      num1000 = number / 1000
      rom_num << "M" * num1000
      number = number - (1000 * num1000)
      puts number_to_rom_num
    when (number / 900 >= 1)
      rom_num << "CM"
      number = number - 900
      puts number_to_rom_num
    when (number / 500 >= 1)
      rom_num << "D"
      number = number - 500
    when (number / 400 >= 1)
      rom_num << "CD"
      number = number - 500
  end
end
