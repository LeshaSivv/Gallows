# frozen_string_literal: true

require_relative 'methods'
guessed_letters = []
errors = 0
puts 'Добро пожаловать в игру виселица!'
hidden = hidden_word_input
loop do
  system('clear')
  hidden_word_show(guessed_letters, hidden)
  check_errors(errors, hidden)
  errors = check_letter(letter_input, hidden, guessed_letters, errors)
  check_win(guessed_letters, hidden)
end
