# TryRuby (Practice Lesson) 
# - Practice on JSON format Hash
#   -- Display all book title
#   -- Print & count books on specific year
#   -- Show books in between years
# - Using of Boolean Method
# - Assigning a Blurb Class
#   -- Adding Initialize
#     --- limiting content length 
#     --- initialize Time default
#     --- add moodify method
# - Storing all Blurb class


# Practice on JSON format Hash
def get_shakey
  { "William Shakespeare"=> {
    "1"=>  { "title"=>"The Two Gentlemen of Verona", "finished"=>1591 }, 
    "2"=>  { "title"=>"The Taming of the Shrew", "finished"=>1591 }, 
    "3"=>  { "title"=>"Henry VI, Part 2", "finished"=>1591 }, 
    "4"=>  { "title"=>"Henry VI, Part 3", "finished"=>1591 }, 
    "5"=>  { "title"=>"Henry VI, Part 1", "finished"=>1592 }, 
    "6"=>  { "title"=>"Titus Andronicus", "finished"=>1592 }, 
    "7"=>  { "title"=>"Richard III", "finished"=>1593 }, 
    "8"=>  { "title"=>"Edward III", "finished"=>1593 }, 
    "9"=>  { "title"=>"The Comedy of Errors", "finished"=>1594 },
    "10"=> { "title"=>"Love's Labour's Lost", "finished"=>1595 } } }
end

# Display all Book Title
get_shakey["William Shakespeare"].each { |key, val| puts val["title"] }
25.times { print "-" }
puts

# Print & Count books on specific year
def count_plays(year)
  get_shakey["William Shakespeare"]
  .select { |key,value| value["finished"] == year }
  .each { |key,value| puts value["title"] }
  .count
end

puts count_plays(1593)
25.times { print "-" }
puts

# Show books between year_from & year_to
def print_plays(year_from, year_to)
  get_shakey["William Shakespeare"]
  .select { |key, value| year_from <= value["finished"] && year_to >= value["finished"] }
  .each { |key, value| puts "#{value["title"].ljust(30)} #{value["finished"]}" }
end
print_plays(1591, 1592)
25.times { print "-" }
puts

# Using of Boolean Method
def hungry?(time_of_day_in_hours)
  if time_of_day_in_hours > 12
    puts "Me hungry"
    true
  else
    puts "Me not hungry"
    false
  end
end

def eat_an(what)
  puts "Me eat #{what}\n"
end

eat_an 'apple' if hungry?(14)
eat_an 'apple' if hungry?(10)
25.times { print "-" }
puts

# Assigning a Class
class Blurb
  attr_accessor :content, :time, :mood
end

blurb1 = Blurb.new
blurb1.content = "Today Mount Hood Was Stolen!"
blurb1.time = Time.now
blurb1.mood = "sick"
p blurb1

# Adding Initialize
# - limiting content length 
# - initialize Time default
# - add moodify method 
class Blurb
  attr_accessor :content, :time, :mood

  def initialize(mood, content="") # content="" make sure content is String
    @time    = Time.now
    @content = content[0..39]
    @mood    = mood
  end

  def moodify
    if @mood == "happy"
      return ":-)"
    elsif @mood == "sad"
      return ":-("
    else
      return ":-D"
    end
  end
end

blurb2 = Blurb.new "confused", "I can not believe Mt. Hood was stolen!"
p blurb2

# Storing all Blurb Class
class Blurbalizer
  def initialize(title)
    @title  = title
    @blurbs = [] # A fresh clean array for storing Blurbs
  end

  def add_a_blurb(mood, content)
    @blurbs << Blurb.new(mood, content)
  end

  def show_timeline
    puts "Blurbify: #{@title} has #{@blurbs.count} Blurbs"

    @blurbs.sort_by { |t| t.time }
    .reverse
    .each { |t| puts "#{t.moodify} #{t.content.ljust(40)} #{t.time}" }
  end
end

myapp = Blurbalizer.new "The Big Blurb"
myapp.add_a_blurb "moody", "Add Blurb1 here"
myapp.add_a_blurb "happy", "Add Blurb2 here"
myapp.add_a_blurb "sad", "Add Blurb3 here"
myapp.add_a_blurb "excited", "Add Blurb4 here"

myapp.show_timeline

