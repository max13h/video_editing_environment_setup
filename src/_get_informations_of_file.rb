def _get_informations_of_file(file_name)
  creation_time = File.mtime(File.join(SOURCE_DIRECTORY, file_name))
  date_prefix = creation_time.strftime('%y%m%d')
  full_date_prefix = creation_time.strftime('%y%m%d-%H%M')

  # Obtention de l'extension du fichier
  extension = File.extname(file_name)

  if extension.downcase.include? "mp4"
    extension_prefix = "VIDEO"
  elsif extension.downcase.include? "mp3"
    extension_prefix = "AUDIO"
  else
    extension_prefix = extension[1..-1].upcase
  end
  
  return [full_date_prefix, date_prefix, extension_prefix, extension]
end