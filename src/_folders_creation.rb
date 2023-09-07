def folder_creation(date_prefix, extension_prefix)
  directory = File.join(PARENT_DESTINATION_DIRECTORY, "#{date_prefix}")
  FileUtils.mkdir_p(directory)

  specific_directory = File.join(directory, "#{extension_prefix}")
  FileUtils.mkdir_p(specific_directory)

  #Création des sous dossier pour le montage
  sequence_directory = File.join(directory, "01_SEQENCES")
  FileUtils.mkdir_p(sequence_directory)

  assets_directory = File.join(directory, "02_ASSETS")
  FileUtils.mkdir_p(assets_directory)
  images_directory = File.join(assets_directory, "IMAGES")
  FileUtils.mkdir_p(images_directory)
  song_directory = File.join(assets_directory, "SONGS")
  FileUtils.mkdir_p(song_directory)

  return specific_directory
end