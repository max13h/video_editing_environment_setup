require_relative './_get_informations_of_file'
require_relative './_folders_creation.rb'
require 'fileutils'

def file_iteration
  Dir.foreach(SOURCE_DIRECTORY) do |file_name|
    next if file_name == '.' || file_name == '..'


    full_date_prefix, date_prefix, extension_prefix, extension = _get_informations_of_file(file_name)

    specific_directory = folder_creation(date_prefix, extension_prefix)


    matching_files = Dir.glob(File.join(specific_directory, "#{full_date_prefix}_#{extension_prefix}*"))


    if matching_files.empty?
      new_file_name = "#{full_date_prefix}_#{extension_prefix}#{extension}"
    else
      number_prefix = matching_files.size + 1 
      new_file_name = "#{full_date_prefix}_#{extension_prefix}_#{number_prefix}#{extension}"
    end

    new_file_path = File.join(specific_directory, new_file_name)

    FileUtils.cp(File.join(SOURCE_DIRECTORY, file_name), new_file_path)

    puts "File copied and renamed : #{file_name} -> #{new_file_path}"
  end
end