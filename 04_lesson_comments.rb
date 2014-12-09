require 'pp'
require 'json'

curriculum = JSON.parse(File.read('curriculum.json'))

curriculum["units"].each do |unit|
  puts unit["name"]
  unit["lessons"].each do |lesson|
      lesson["occurrences"].each do |date, hash|
        @cc = hash["comments"].count
      end
      puts "  #{lesson["name"]} - #{@cc}"
  end
      # puts "  #{unit["lessons"]["name"]} - #{hash["comments"].count}"
end

# Require json and parse the json file
#
# Print out the lesson names with the total number of comments
#
# Expected output
#
#   Orientation
#     Name Games - 3
#     Mind Maps - 4
#     Sequence Diagrams - 2
#   Rails Basics
#     Controllers - 5
#     Models - 0
#     Views - 8
#     Migrations - 2
#   CRUD
#     Create - 3
#     Read - 1
#     Update - 6
#     Delete - 2
