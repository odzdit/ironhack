puts "Hello please tell me the line of a song"
song1 = gets.chomp 
song1.gsub '.',''
song1.split(" ").map { |s| s.to_i}
puts song1