# Section 2 - Homework Project - Area Code (Solution)

dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

#----==Redundant Methods==----
# def get_city_name(somehash)
#   somehash.keys
# end

# def get_area_code(somehash, key)
#   somehash[key]
# end

loop do
  puts "Do you want to lookup an area code based on a city name? (Y/N)"
  answer = gets.chomp.downcase
  break if answer != "y"
  puts "Which city do you want to lookup for the area code for?"
  puts dial_book.keys
  puts "Enter your selection"
  prompt = gets.chomp

  puts dial_book.include?(prompt) ? "The area code for #{prompt} is #{dial_book[prompt]}" : "You entered an invalid city name"
end

