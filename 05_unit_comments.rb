require 'pp'
require_relative 'curriculum'

CURRICULUM[:units].each do |unit|
  @cc = 0
  unit[:lessons].each do |lesson|
   lesson[:occurrences].each do |date, hash|
     @cc += hash[:comments].count
   end
  end
  puts "#{unit[:name]} - #{@cc}"
end

# Require the Ruby file
#
# Print out the unit names with the comment counts
#
# Expected output
#
#   Orientation - 9
#   Rails Basics - 15
#   CRUD - 12
