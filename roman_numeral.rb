def number_to_rom_num (number)
  rom_num =                              #empty variable to append roman numerals in
  case (number)
    when number / 1000 >= 1
      num1000 = number / 1000             #determines number of 1000's
      rom_num << ("M" * num1000)          #appends M's to rom_num
      number = number - (1000 * num1000)
      puts number_to_rom_num(number)
    when number / 900 >= 1
      rom_num << "CM"
      number = number - 900
      puts number_to_rom_num(number)
    when number / 500 >= 1
       rom_num << "D"
      number = number - 500
      puts number_to_rom_num(number)
    when number / 400 >= 1
      rom_num << "CD"
      number = number - 400
      puts number_to_rom_num(number)
    when (number / 100) >= 1
      num100 = number / 100
      rom_num << ("C" * num100)
      number = number - (100 * num100)
      puts number_to_rom_num(number)
    when number / 90 >= 1
      rom_num << "XC"
      number = number - 90
      puts number_to_rom_num(number)
    when number / 50 >= 1
      rom_num << "L"
      number = number - 50
      puts number_to_rom_num(number)
    when number / 40 >= 1
      rom_num << "XL"
      number = number - 40
      puts number_to_rom_num(number)
    when number / 10 >= 1
      num10 = number / 10
      rom_num << ("X" * num10)
      number = number - (10 * num10)
      puts number_to_rom_num(number)
    when number / 5 >= 1
      rom_num << "V"
      number = number - 5
      puts number_to_rom_num(number)
    when number / 4 >= 1
      rom_num << "IV"
      number = number - 4
      puts number_to_rom_num(number)
    when number == 3
      rom_num << "III"
      puts rom_num
      return
    when number == 2
      rom_num << "II"
      puts rom_num
      return
    when number == 1
      rom_num << "I"
      puts rom_num
      return
    else
      puts "Please enter a positive integer."
  end
end

puts number_to_rom_num(100)