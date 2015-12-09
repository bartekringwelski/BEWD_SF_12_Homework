# Step 1: Working with Arrays and Hashes

# Create an empty stories array. This will be used to hold all stories we captures

# Users enter the story as they do now, but it gets put in a hash instead. 
# Update any reference to the story (upvotes, category and title) 
# Your story hash should look like the one below: 
# { title: "Monkeys thank mayor for flounder tooth necklace", category: "Teeth", upvotes: 1 }
# Add the hash to an array called stories and print "Story: Monkeys thank mayor for flounder tooth necklace, Category: (Teeth), Current Upvotes: 1"
# Using the stories array 
# Test your cat, bacon, and food upvote conditional logic.

# Step 2: Adding Loops 
# Use a loop, so that your program continues to ask a user for stories until they chose to quit. ("Would you like to add another story? Enter 'y' or 'n'")
# Once the user is finished with entering their stories, use .each to print each story in the stories array. 


require 'pry'



def get_input
  gets.strip
end

def calculate_upvotes(story)
  upvotes = 1

  title = story[:title]
  category = story[:category]

  if story.downcase.include? 'cat'
    upvotes *= 5
  elsif story.downcase.include? 'bacon'
    upvotes *= 8
  end

  if category.downcase == "food"
    upvotes *= 3
  end

  upvotes
end

puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
puts "Please enter a News story:"
story[:title] = get_input
puts "Please give it a category:"
story[:category] = get_input
story[:upvotes] = calculate_upvotes(story, category)
puts "New story added! #{story[:title]}, Category: #{story[:category].capitalize}, Current Upvotes: #{story[:upvotes}"

# need to fix the above



#----------------


# input = []


# 1.upto(5) do
#   puts "enter name"
#   name = gets.chomp
#   input << name
# end

# input.each do |list_all|
#   puts list_all
# end




# # 1.upto(3) do |i|
# # puts "enter string"
# # string_1 = gets.chomp
# # input << string_1

# # puts "enter string 2"
# # string_1 = gets.chomp
# # input << string_1

# # puts "enter string 3"
# # string_1 = gets.chomp
# # input << string_1


# # input.each do |list_all|
# #   puts list_all
# # end

# #-----------------#


# # hash_thing = {}
# # puts "enter string 1"
# # first_string = gets.chomp
# # hash_thing[:first_string]

# # puts "enter string 2"
# # first_string = gets.chomp
# # hash_thing[:first_string]

# # hash_thing






# # puts "enter string 2"
# # string_2 = gets.chomp

# # # puts "enter string 3"
# # # 3rd_string = gets.chomp


# # inputs = [string_1, string_2]

# # # puts "#{inputs[string_1]}"