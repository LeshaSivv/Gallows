class Word_reader
  def read_from_file(file_path)
    if File.exist?(file_path)
      f = File.new(file_path)
      a = f.readlines
      f.close
      a
    else
      puts 'Файл не найден'
    end
  end
end
