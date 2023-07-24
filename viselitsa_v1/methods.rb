def hidden_word_input
  puts 'Введите загаданное слово'
  a = gets.chomp
  a = a.split('')
  b = []
  a.map do |i|
    puts i
    i = 'е' if i == 'ё'
    i = 'и' if i == 'й'
    b << i
  end
  b = b.join('')
end

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

def letter_input
  puts 'Введите букву:'
  a = gets.chomp
  a = 'е' if a == 'ё'
  a = 'и' if a == 'й'
  a
end

def check_letter(letter_input, hidden, guessed_letters, errors)
  if hidden.split('').uniq.include?(letter_input)
    guessed_letters << letter_input
  else
    errors += 1
  end
  errors
end

def check_errors(errors, hidden)
  abort "Вы повешены.Загаданное слово было #{hidden}" if errors > 6
  puts "Количество ошибок: #{errors}"
end

def check_win(guessed_letters, hidden)
  return unless hidden.split('').uniq.size == guessed_letters.size

  system('clear')
  abort 'Вы выйграли'
end
