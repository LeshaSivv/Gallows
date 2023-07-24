class Interface
  def hidden_word_show(guessed_letters, hidden)
    hidden.size.times do |i|
      if guessed_letters.include?(hidden.split('')[i])
        print hidden.split('')[i]
      else
        print '_'
      end
    end
    puts
  end

  def show_errors(errors, hidden)
    abort "Вы повешены.Загаданное слово было #{hidden}" if errors > 6
    puts "Количество ошибок: #{errors}"
  end

  def show_image(reader, errors, current_path)
    image = reader.read_from_file("#{current_path}/data/images/#{errors}.txt")
    image.each { |line| puts line }
  end
end
