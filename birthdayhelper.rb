require 'date'
require 'csv'

def birthday_finder(name)
  matching_birthdays = []
  birthdays = CSV.read('birthday_data.csv')

  birthdays.each do |sub|
    sub.each do |i|
      if i === name
       matching_birthdays.push(sub[0..2])
      end
    end
  end
  matching_birthdays
end

now = Time.now.year

p "Please enter a person's name to find their birthday and age."
name = gets.chomp

bday = birthday_finder(name)[0].pop
bday_year = bday[0..3].to_i
age = "#{now - bday_year} years old"

birthday_finder(name)

p "#{birthday_finder(name)[0][1]} #{birthday_finder(name)[0][0]} was born on #{birthday_finder(name)[0][2]} and is #{age}."
