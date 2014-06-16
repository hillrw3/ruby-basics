require 'date'
require 'csv'
def birthday_finder
  birthdays = CSV.read('birthday_data.csv')
  now = Time.now.to_date
  p "Please enter a person's name to find their birthday and age."
  name = gets.chomp
  birthdays.select do |i|
    if i === name
      p i + " " + i.next
    end
  end
end

p birthday_finder