# Add your code here

=begin def say_hello(name)
  "Hi #{name}!"
end
 
puts "Enter your name:"
users_name = gets.strip
 
puts say_hello(users_name) 
=end

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(array)
  array.each_with_index do |song, index|
  puts "#{index + 1}. #{song}"
  end
end

def play(array)
  puts "Please enter a song name or number:"
  input = gets.strip
  if input.to_i >= 1 && input.to_i <= array.length
    puts "Playing #{array[input.to_i-1]}"
  elsif array.include?(input)
    puts "Playing #{array.find{|array| array == input}}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run
puts "Please enter a command:"
loop do
input = gets.strip
    if input == "list"
      list(array)
      elsif input == "play"
      play(array)
      elsif input == "help"
      help
    end
end
exit_jukebox
end