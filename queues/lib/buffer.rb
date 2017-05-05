require_relative 'queue'
require 'pry'
buffer = Launch::Queue.new
File.open('paragraph.txt', 'r') do |f|
  f.each_char do |char|
    buffer.enter(char)
  end
end

# def char_count
#   char_hash = Hash.new
#
# end

count = 0
char_hash = Hash.new
while !buffer.empty?
	  current_char = buffer.leave
	if char_hash[current_char]
    char_hash[current_char] += 1
  else
    char_hash[current_char] = 1
  end
  count += 1
end

char_hash = char_hash.sort_by { |key, value| value}.reverse

char_hash.each { |key, value| puts "There are #{value} instances of #{key}" }
