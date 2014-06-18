def to_roman(number)
  thous = (number / 1000)
  hunds = (number % 1000 / 100)
  tens = (number % 100 / 10)
  ones = (number % 10)

  rom_num = "M" * thous

  if hunds == 9
    rom_num = rom_num + "CM"
  elsif hunds == 5
    rom_num = rom_num + "D"
  elsif hunds == 4
    rom_num = rom_num + "CD"
  else
    rom_num = rom_num + ("C" * hunds)
  end

  if tens == 9
    rom_num = rom_num + "XC"
  elsif tens == 5
    rom_num = rom_num + "L"
  elsif tens == 4
    rom_num = rom_num + "XL"
  else
    rom_num = rom_num + ("X" * tens)
  end

  if ones == 9
    rom_num = rom_num + "IX"
  elsif ones == 5
    rom_num = rom_num + "V"
  elsif ones == 4
    rom_num = rom_num + "IV"
  else
    rom_num = rom_num + ("I" * ones)
  end

  puts rom_num
end
to_roman(564)
