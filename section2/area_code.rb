# Section 2 - Homework Assignment: Area Code Dictionary
# - using of Loop to ask User if want to look up area code based on City name
# - enter the Loop when User choose "y" else break the Loop
# - show all the City (keys) in the Hash
# - check if input City exist inside the Hash

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

def get_city_names(hash)
  hash.keys
end

def get_area_code(hash, key)
  # if hash.has_key?(key)
  #   "The area code for #{key} is #{hash[key]}"
  # else
  #   "Invalid city name, please try again."
  # end
  hash.has_key?(key) ? "The area code for #{key} is #{hash[key]}" : "Invalid city name, please try again."
end

loop do
  puts "Do you want to lookup an area code based on a city name? (Y/N)"
  answer = gets.chomp.downcase
  break if answer != "y"
  puts

  puts "Which city do you want the area code for?"
  puts get_city_names(dial_book)

  puts "Enter your selection: "
  selection = gets.chomp.downcase
  puts get_area_code(dial_book, selection)
end

