require_relative "./src/index.rb"

puts ""
puts "==================="
puts "*** PREPARING YOUR FILES FOR POST-EDITING **"
puts "***               by max13h               **"
puts "==================="
puts ""

puts "Which RAW folder do you want to organize ?"
SOURCE_DIRECTORY = File.expand_path(gets.chomp)

puts ""
puts "==================="
puts ""

puts "Enter a name for your folder:"
FOLDER_NAME = gets.chomp

puts ""
puts "==================="
puts ""

PARENT_DESTINATION_DIRECTORY = File.join(SOURCE_DIRECTORY, "#{FOLDER_NAME}_SRC")

file_iteration

puts ""
puts "======================================"
puts 'All files have been successfully sorted.'
puts "======================================"
puts ""
